/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.instancesmanager

import io.kubernetes.client.custom.Quantity
import io.kubernetes.client.openapi.ApiException
import io.kubernetes.client.openapi.Configuration
import io.kubernetes.client.openapi.apis.AppsV1Api
import io.kubernetes.client.openapi.apis.CoreV1Api
import io.kubernetes.client.openapi.models.*
import io.kubernetes.client.util.ClientBuilder
import io.kubernetes.client.util.Yaml
import org.apache.log4j.Logger
import org.eclipse.jetty.server.Request
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceHash
import org.modelix.workspaces.WorkspacePersistence
import java.io.IOException
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong
import java.util.function.Consumer
import java.util.regex.Pattern
import java.util.stream.Collectors
import javax.servlet.http.HttpServletRequest

class DeploymentManager {
    private val cleanupThread: Thread = object : Thread() {
        override fun run() {
            while (true) {
                try {
                    createAssignmentsForAllWorkspaces()
                    reconcileDeployments()
                } catch (ex: Exception) {
                    LOG.error("", ex)
                }
                try {
                    sleep(10000)
                } catch (e: InterruptedException) {
                    return
                }
            }
        }
    }
    private val managerId = java.lang.Long.toHexString(System.currentTimeMillis() / 1000)
    private val deploymentSuffixSequence = AtomicLong(0xf)
    private val assignments = Collections.synchronizedMap(HashMap<WorkspaceHash, Assignments>())
    private val disabledInstances = HashSet<String>()
    private val dirty = AtomicBoolean(true)
    private val workspacePersistence = WorkspacePersistence()
    private fun getAssignments(workspace: Workspace): Assignments {
        return assignments.getOrPut(workspace.hash()) { Assignments(workspace) }
    }

    fun getAssignments(): List<AssignmentData> {
        val latestWorkspaces =
            workspacePersistence.getWorkspaceIds().mapNotNull { workspacePersistence.getWorkspaceForId(it) }
        val latestWorkspaceHashes = latestWorkspaces.map { it.second }.toSet()
        var hash2workspace = latestWorkspaces.associate { it.second to it.first }

        var assignmentsCopy: HashMap<WorkspaceHash, Assignments>
        synchronized(assignments) {
            assignmentsCopy = HashMap(assignments)
        }

        hash2workspace += assignmentsCopy.map { it.key to it.value.workspace }

        return hash2workspace.map {
            val assignment = assignmentsCopy[it.key]
            val workspace = it.value
            AssignmentData(
                workspace = workspace,
                unassignedInstances = assignment?.getNumberOfUnassigned() ?: 0,
                (assignment?.listDeployments() ?: emptyList()).map { deployment ->
                    InstanceStatus(workspace, deployment.first, deployment.second, disabledInstances.contains(deployment.second))
                },
                isLatest = latestWorkspaceHashes.contains(it.key)
            )
        }
    }

    fun listDeployments(): List<InstanceStatus> {
        return assignments.entries.flatMap { assignment ->
            assignment.value.listDeployments().map { deployment ->
                InstanceStatus(assignment.value.workspace, deployment.first, deployment.second, disabledInstances.contains(deployment.second))
            }
        }
    }

    fun disableInstance(instanceId: String) {
        disabledInstances += instanceId
        dirty.set(true)
        reconcileDeployments()
    }

    fun enableInstance(instanceId: String) {
        disabledInstances -= instanceId
        dirty.set(true)
        reconcileDeployments()
    }

    fun changeNumberOfAssigned(workspaceHash: WorkspaceHash, newNumber: Int) {
        getAssignments(workspacePersistence.getWorkspaceForHash(workspaceHash)!!).setNumberOfUnassigned(newNumber, true)
    }

    fun isInstanceDisabled(instanceId: String): Boolean = disabledInstances.contains(instanceId)

    private fun generatePersonalDeploymentName(workspace: Workspace): String {
        val cleanName = (workspace.id + "-" + workspace.hash()).lowercase(Locale.getDefault()).replace("[^a-z0-9-]".toRegex(), "")
        var deploymentName = PERSONAL_DEPLOYMENT_PREFIX + cleanName
        val suffix = "-" + java.lang.Long.toHexString(deploymentSuffixSequence.incrementAndGet()) + "-" + managerId
        val charsToRemove = deploymentName.length + suffix.length - (63 - 16)
        if (charsToRemove > 0) deploymentName = deploymentName.substring(0, deploymentName.length - charsToRemove)
        return deploymentName + suffix
    }

    private fun init() {

    }

    fun redirect(baseRequest: Request?, request: HttpServletRequest): RedirectedURL? {
        val redirected: RedirectedURL = RedirectedURL.redirect(baseRequest, request)
            ?: return null
        if (redirected.userId == null) return redirected
        val originalDeploymentName = redirected.originalDeploymentName
        if (!WORKSPACE_PATTERN.matcher(originalDeploymentName).matches()) return null
        val workspace = getWorkspaceForPath(originalDeploymentName) ?: return null
        val assignments = getAssignments(workspace)
        redirected.personalDeploymentName = assignments.getOrCreate(redirected.userId)
        assignments.reconcile()
        reconcileIfDirty()
        return redirected
    }

    private val reconcileLock = Any()

    init {
        try {
            Configuration.setDefaultApiClient(ClientBuilder.cluster().build())
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
        init()
        reconcileDeployments()
        cleanupThread.start()
    }

    private fun createAssignmentsForAllWorkspaces() {
        val latestVersions = workspacePersistence.getWorkspaceIds()
            .mapNotNull { workspacePersistence.getWorkspaceForId(it) }.associateBy { it.first.id }
        val allExistingVersions = assignments.entries.groupBy { it.value.workspace.id }

        for (latestVersion in latestVersions) {
            val existingVersions: List<MutableMap.MutableEntry<WorkspaceHash, Assignments>>? = allExistingVersions[latestVersion.key]
            if (existingVersions != null && existingVersions.any { it.key == latestVersion.value.second }) continue
            val assignment = getAssignments(latestVersion.value.first)
            val unassigned = existingVersions?.maxOfOrNull { it.value.getNumberOfUnassigned() } ?: 0
            assignment.setNumberOfUnassigned(unassigned, false)
            existingVersions?.forEach { it.value.resetNumberOfUnassigned() }
        }

        val deletedIds = allExistingVersions.keys - latestVersions.keys
        for (deleted in deletedIds.flatMap { allExistingVersions[it]!! }) {
            deleted.value.resetNumberOfUnassigned()
        }
    }

    private fun reconcileDeployments() {
        // TODO doesn't work with multiple instances of this proxy
        synchronized(reconcileLock) {
            try {
                val expectedDeployments: MutableMap<String, Workspace> = HashMap()
                val existingDeployments: MutableSet<String> = HashSet()
                synchronized(assignments) {
                    for (assignment in assignments.values) {
                        assignment.removeTimedOut()
                        for (deployment in assignment.getAllDeploymentNames()) {
                            if (!disabledInstances.contains(deployment)) {
                                expectedDeployments[deployment] = assignment.workspace
                            }
                        }
                    }
                }
                val appsApi = AppsV1Api()
                val coreApi = CoreV1Api()
                val deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
                for (deployment in deployments.items) {
                    val name = deployment.metadata!!.name!!
                    if (name.startsWith(PERSONAL_DEPLOYMENT_PREFIX)) {
                        existingDeployments.add(name)
                    }
                }
                val toAdd = expectedDeployments.keys.stream().filter { d: String? -> !existingDeployments.contains(d) }.collect(Collectors.toList())
                val toRemove = existingDeployments.stream().filter { d: String? -> !expectedDeployments.containsKey(d) }.collect(Collectors.toList())
                for (d in toRemove) {
                    try {
                        appsApi.deleteNamespacedDeployment(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                    } catch (e: Exception) {
                        LOG.error("Failed to delete deployment $d", e)
                    }
                    try {
                        coreApi.deleteNamespacedService(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                    } catch (e: Exception) {
                        LOG.error("Failed to delete service $d", e)
                    }
                }
                for (d in toAdd) {
                    val workspace = expectedDeployments[d]!!
                    try {
                        createDeployment(workspace, d)
                    } catch (e: Exception) {
                        LOG.error("Failed to create deployment for workspace ${workspace.id} / $d", e)
                    }
                }
            } catch (e: ApiException) {
                LOG.error("Deployment cleanup failed", e)
            }
        }
    }

    private fun reconcileIfDirty() {
        if (dirty.getAndSet(false)) reconcileDeployments()
    }

    @Throws(ApiException::class)
    fun getDeployment(name: String?, attempts: Int): V1Deployment? {
        val appsApi = AppsV1Api()
        var deployment: V1Deployment? = null
        for (i in 0 until attempts) {
            try {
                deployment = appsApi.readNamespacedDeployment(name, KUBERNETES_NAMESPACE, null, null, null)
            } catch (ex: ApiException) {
                LOG.error("Failed to read deployment: $name", ex)
            }
            if (deployment != null) break
            try {
                Thread.sleep(1000L)
            } catch (e: InterruptedException) {
                return null
            }
        }
        return deployment
    }

    fun getPod(deploymentName: String): V1Pod? {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (pod in pods.items) {
                if (!pod.metadata!!.name!!.startsWith(deploymentName)) continue
                return pod
            }
        } catch (e: Exception) {
            LOG.error("", e)
            return null
        }
        return null
    }

    fun getPodLogs(deploymentName: String): String? {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (pod in pods.items) {
                if (!pod.metadata!!.name!!.startsWith(deploymentName)) continue
                return coreApi.readNamespacedPodLog(
                    pod.metadata!!.name,
                    KUBERNETES_NAMESPACE,
                    pod.spec!!.containers[0].name,
                    null, null, "true", null, null, 10000, null)
            }
        } catch (e: Exception) {
            LOG.error("", e)
            return null
        }
        return null
    }

    fun getEvents(deploymentName: String?): List<V1Event> {
        if (deploymentName == null) return emptyList()
        val events: V1EventList = CoreV1Api().listNamespacedEvent(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 10, null)
        return events.items
            .filter { (it.involvedObject.name ?: "").contains(deploymentName) }
    }

    fun getWorkspaceForPath(path: String): Workspace? {
        val matcher = WORKSPACE_PATTERN.matcher(path)
        if (!matcher.matches()) return null
        var workspaceId = matcher.group(1)
        var workspaceHash = matcher.group(2) ?: return null
        if (!workspaceHash.contains("*")) workspaceHash = workspaceHash.substring(0, 5) + "*" + workspaceHash.substring(5)
        return workspacePersistence.getWorkspaceForHash(WorkspaceHash(workspaceHash))
    }

    @Synchronized
    fun getWorkspaceForInstance(instanceId: String): Workspace? {
        return assignments.values.filter { it.getAllDeploymentNames().any { it == instanceId } }
            .map { it.workspace }.firstOrNull()
    }

    @Throws(IOException::class, ApiException::class)
    fun createDeployment(workspace: Workspace, personalDeploymentName: String?): Boolean {
        val originalDeploymentName = WORKSPACE_CLIENT_DEPLOYMENT_NAME
        val appsApi = AppsV1Api()
        val deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false)
        val deploymentExists = deployments.items.stream().anyMatch { d: V1Deployment -> personalDeploymentName == d.metadata!!.name }
        if (!deploymentExists) {
//            long numExisting = deployments.getItems().stream().filter(d -> d.getMetadata().getName().startsWith(personalDeploymentPrefix)).count();
//            if (numExisting > 10) throw new RuntimeException("Too many existing deployments");
            val deployment = appsApi.readNamespacedDeployment(originalDeploymentName, KUBERNETES_NAMESPACE, null, null, null)
            deployment.metadata!!.creationTimestamp(null)
            deployment.metadata!!.managedFields = null
            deployment.metadata!!.uid = null
            deployment.metadata!!.resourceVersion(null)
            deployment.status = null
            deployment.metadata!!.putAnnotationsItem("kubectl.kubernetes.io/last-applied-configuration", null)
            //deployment.metadata!!.putAnnotationsItem(INSTANCE_PER_USER_ANNOTATION_KEY, null)
            //deployment.metadata!!.putAnnotationsItem(MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY, null)
            deployment.metadata!!.name(personalDeploymentName)
            deployment.metadata!!.putLabelsItem("app", personalDeploymentName)
            deployment.spec!!.selector.putMatchLabelsItem("app", personalDeploymentName)
            deployment.spec!!.template.metadata!!.putLabelsItem("app", personalDeploymentName)
            deployment.spec!!.replicas(1)
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("modelix_workspace_id").value(workspace.id))
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("REPOSITORY_ID").value("workspace_${workspace.id}"))
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("modelix_workspace_hash").value(workspace.hash().hash))
            loadWorkspaceSpecificValues(workspace, deployment)
            println("Creating deployment: ")
            println(Yaml.dump(deployment))
            appsApi.createNamespacedDeployment(KUBERNETES_NAMESPACE, deployment, null, null, null)
        }
        val coreApi = CoreV1Api()
        val services = coreApi.listNamespacedService(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false)
        val serviceExists = services.items.stream().anyMatch { s: V1Service -> personalDeploymentName == s.metadata!!.name }
        if (!serviceExists) {
            val service = coreApi.readNamespacedService(originalDeploymentName, KUBERNETES_NAMESPACE, null, null, null)
            service.metadata!!.putAnnotationsItem("kubectl.kubernetes.io/last-applied-configuration", null)
            service.metadata!!.managedFields = null
            service.metadata!!.uid = null
            service.metadata!!.resourceVersion(null)
            service.spec!!.clusterIP = null
            service.spec!!.ports!!.forEach(Consumer { p: V1ServicePort -> p.nodePort(null) })
            service.status = null
            service.metadata!!.name(personalDeploymentName)
            service.metadata!!.putLabelsItem("app", personalDeploymentName)
            service.metadata!!.name(personalDeploymentName)
            service.spec!!.putSelectorItem("app", personalDeploymentName)
            println("Creating service: ")
            println(Yaml.dump(service))
            coreApi.createNamespacedService(KUBERNETES_NAMESPACE, service, null, null, null)
        }
        return true
    }

    private fun loadWorkspaceSpecificValues(workspace: Workspace, deployment: V1Deployment) {
        try {
            val container = deployment.spec!!.template.spec!!.containers[0]
            val mpsVersion = workspace.mpsVersion
            if (mpsVersion != null && mpsVersion.matches("""20\d\d\.\d""".toRegex())) {
                var image = container.image
                if (image != null) {
                    image = image.replaceFirst(""":20\d\d\.\d\.(\d+)""".toRegex(), ":$mpsVersion.$1")
                    container.setImage(image)
                }
            }
            val resources = container.resources ?: return
            val memoryLimit = Quantity.fromString(workspace.memoryLimit)
            val limits = resources.limits
            if (limits != null) limits["memory"] = memoryLimit
            val requests = resources.requests
            if (requests != null) requests["memory"] = memoryLimit
        } catch (ex: Exception) {
            LOG.error("Failed to configure the deployment for the workspace ${workspace.id}", ex)
        }
    }

    private inner class Assignments(val workspace: Workspace) {
        private val userId2deployment: MutableMap<String, String> = HashMap()
        private val unassignedDeployments: MutableList<String> = LinkedList()
        private var numberOfUnassignedAuto: Int? = null
        private var numberOfUnassignedSetByUser: Int? = null

        fun listDeployments(): List<Pair<String?, String>> {
            return userId2deployment.map { it.key to it.value } + unassignedDeployments.map { null to it }
        }

        @Synchronized
        fun getOrCreate(userId: String): String {
            var personalDeployment = userId2deployment[userId]
            if (personalDeployment == null) {
                if (unassignedDeployments.isEmpty()) {
                    personalDeployment = generatePersonalDeploymentName(workspace)
                } else {
                    personalDeployment = unassignedDeployments.removeAt(0)
                    unassignedDeployments.add(generatePersonalDeploymentName(workspace))
                }
                userId2deployment[userId] = personalDeployment!!
                dirty.set(true)
            }
            DeploymentTimeouts.INSTANCE.update(personalDeployment)
            return personalDeployment
        }

        @Synchronized
        fun setNumberOfUnassigned(targetNumber: Int, setByUser: Boolean) {
            if (setByUser) {
                numberOfUnassignedSetByUser = targetNumber
            } else {
                numberOfUnassignedAuto = targetNumber
            }
            reconcile()
        }

        @Synchronized
        fun resetNumberOfUnassigned() {
            numberOfUnassignedSetByUser = null
            numberOfUnassignedAuto = null
            reconcile()
        }

        fun getNumberOfUnassigned() = numberOfUnassignedSetByUser ?: numberOfUnassignedAuto ?: 0

        @Synchronized
        fun reconcile() {
            while (unassignedDeployments.size > getNumberOfUnassigned()) {
                unassignedDeployments.removeAt(unassignedDeployments.size - 1)
                dirty.set(true)
            }
            while (unassignedDeployments.size < getNumberOfUnassigned()) {
                unassignedDeployments.add(generatePersonalDeploymentName(workspace))
                dirty.set(true)
            }
        }

        @Synchronized
        fun getAllDeploymentNames(): List<String> = userId2deployment.values + unassignedDeployments

        @Synchronized
        fun removeTimedOut() {
            val entries = ArrayList<Map.Entry<String?, String?>>(userId2deployment.entries)
            for ((key, value) in entries) {
                if (DeploymentTimeouts.Companion.INSTANCE.isTimedOut(value)) {
                    userId2deployment.remove(key, value)
                    dirty.set(true)
                }
            }
        }
    }

    companion object {
        private val LOG = Logger.getLogger(DeploymentManager::class.java)
        val KUBERNETES_NAMESPACE = System.getenv("WORKSPACE_CLIENT_NAMESPACE") ?: "default"
        val PERSONAL_DEPLOYMENT_PREFIX = System.getenv("WORKSPACE_CLIENT_PREFIX") ?: "wsclt-"
        val WORKSPACE_CLIENT_DEPLOYMENT_NAME = System.getenv("WORKSPACE_CLIENT_DEPLOYMENT_NAME") ?: "workspace-client"
        val WORKSPACE_PATTERN = Pattern.compile("workspace-([a-f0-9]+)-([a-zA-Z0-9\\-_\\*]+)")
        val INSTANCE = DeploymentManager()
    }
}