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
import org.apache.commons.collections4.map.LRUMap
import org.eclipse.jetty.server.Request
import org.modelix.authorization.AccessTokenPrincipal
import org.modelix.authorization.KeycloakResourceType
import org.modelix.authorization.KeycloakScope
import org.modelix.authorization.KeycloakUtils
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceHash
import org.modelix.workspaces.WorkspacePersistence
import org.modelix.workspaces.workspaceResourceType
import java.io.IOException
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong
import java.util.function.Consumer
import java.util.regex.Pattern
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
    private val disabledInstances = HashSet<InstanceName>()
    private val dirty = AtomicBoolean(true)
    private val workspacePersistence = WorkspacePersistence()
    private val userTokens: MutableMap<InstanceOwner, AccessTokenPrincipal> = Collections.synchronizedMap(HashMap())
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

    fun disableInstance(instanceId: InstanceName) {
        disabledInstances += instanceId
        dirty.set(true)
        reconcileDeployments()
    }

    fun enableInstance(instanceId: InstanceName) {
        disabledInstances -= instanceId
        dirty.set(true)
        reconcileDeployments()
    }

    fun changeNumberOfAssigned(workspaceHash: WorkspaceHash, newNumber: Int) {
        getAssignments(workspacePersistence.getWorkspaceForHash(workspaceHash)!!).setNumberOfUnassigned(newNumber, true)
    }

    fun isInstanceDisabled(instanceId: InstanceName): Boolean = disabledInstances.contains(instanceId)

    private fun generateInstanceName(workspace: Workspace): InstanceName {
        val cleanName = (workspace.id + "-" + workspace.hash()).lowercase(Locale.getDefault()).replace("[^a-z0-9-]".toRegex(), "")
        var deploymentName = INSTANCE_PREFIX + cleanName
        val suffix = "-" + java.lang.Long.toHexString(deploymentSuffixSequence.incrementAndGet()) + "-" + managerId
        val charsToRemove = deploymentName.length + suffix.length - (63 - 16)
        if (charsToRemove > 0) deploymentName = deploymentName.substring(0, deploymentName.length - charsToRemove)
        return InstanceName(deploymentName + suffix)
    }

    private fun init() {

    }

    @Synchronized
    fun redirect(baseRequest: Request?, request: HttpServletRequest): RedirectedURL? {
        val redirected: RedirectedURL = RedirectedURL.redirect(baseRequest, request)
            ?: return null
        return redirect(redirected)
    }

    @Synchronized
    fun redirect(redirected: RedirectedURL): RedirectedURL? {
        val userToken: AccessTokenPrincipal? = redirected.userToken
        if (userToken == null) return redirected
        val userId = userToken.getUserName()
        if (userId != null) {
            userTokens[UserInstanceOwner(userId)] = userToken
        }
        val originalDeploymentName = redirected.originalDeploymentName
        if (!WORKSPACE_PATTERN.matcher(originalDeploymentName).matches()) return null
        val workspace = getWorkspaceForPath(originalDeploymentName) ?: return null
        val assignments = getAssignments(workspace)
        redirected.instanceName = assignments.getOrCreate(userToken)
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
                val expectedDeployments: MutableMap<InstanceName, Pair<Workspace, InstanceOwner>> = HashMap()
                val existingDeployments: MutableSet<InstanceName> = HashSet()
                synchronized(assignments) {
                    for (assignment in assignments.values) {
                        assignment.removeTimedOut()
                        for (deployment in assignment.getAllDeploymentNamesAndUserIds()) {
                            if (!disabledInstances.contains(deployment.first)) {
                                expectedDeployments[deployment.first] =
                                    assignment.workspace to deployment.second
                            }
                        }
                    }
                }
                val appsApi = AppsV1Api()
                val coreApi = CoreV1Api()
                val deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
                for (deployment in deployments.items) {
                    val name = deployment.metadata!!.name!!
                    if (name.startsWith(INSTANCE_PREFIX)) {
                        existingDeployments.add(InstanceName(name))
                    }
                }
                val toAdd = expectedDeployments.keys - existingDeployments
                val toRemove = existingDeployments - expectedDeployments.keys
                for (d in toRemove) {
                    try {
                        appsApi.deleteNamespacedDeployment(d.name, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                    } catch (e: Exception) {
                        LOG.error("Failed to delete deployment $d", e)
                    }
                    try {
                        coreApi.deleteNamespacedService(d.name, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                    } catch (e: Exception) {
                        LOG.error("Failed to delete service $d", e)
                    }
                }
                for (d in toAdd) {
                    val (workspace, owner) = expectedDeployments[d]!!
                    try {
                        createDeployment(workspace, owner, d, userTokens[owner])
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
    fun getDeployment(name: InstanceName, attempts: Int): V1Deployment? {
        val appsApi = AppsV1Api()
        var deployment: V1Deployment? = null
        for (i in 0 until attempts) {
            try {
                deployment = appsApi.readNamespacedDeployment(name.name, KUBERNETES_NAMESPACE, null, null, null)
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

    fun getPod(deploymentName: InstanceName): V1Pod? {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (pod in pods.items) {
                if (!pod.metadata!!.name!!.startsWith(deploymentName.name)) continue
                return pod
            }
        } catch (e: Exception) {
            LOG.error("", e)
            return null
        }
        return null
    }

    fun getPodLogs(deploymentName: InstanceName): String? {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (pod in pods.items) {
                if (!pod.metadata!!.name!!.startsWith(deploymentName.name)) continue
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

    private val workspaceCache = LRUMap<WorkspaceHash, Workspace?>(100)
    fun getWorkspaceForPath(path: String): Workspace? {
        val matcher = WORKSPACE_PATTERN.matcher(path)
        if (!matcher.matches()) return null
        var workspaceId = matcher.group(1)
        var workspaceHash = matcher.group(2) ?: return null
        if (!workspaceHash.contains("*")) workspaceHash = workspaceHash.substring(0, 5) + "*" + workspaceHash.substring(5)
        return workspaceCache.computeIfAbsent(WorkspaceHash(workspaceHash)) {
            workspacePersistence.getWorkspaceForHash(it)
        }
    }

    @Synchronized
    fun getWorkspaceForInstance(instanceId: InstanceName): Workspace? {
        return assignments.values.filter { it.getAllDeploymentNames().any { it == instanceId } }
            .map { it.workspace }.firstOrNull()
    }

    @Throws(IOException::class, ApiException::class)
    fun createDeployment(workspace: Workspace, owner: InstanceOwner, instanceName: InstanceName, userToken: AccessTokenPrincipal?): Boolean {
        val originalDeploymentName = WORKSPACE_CLIENT_DEPLOYMENT_NAME
        val appsApi = AppsV1Api()
        val deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false)
        val deploymentExists = deployments.items.stream().anyMatch { d: V1Deployment -> instanceName.name == d.metadata!!.name }
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
            deployment.metadata!!.name(instanceName.name)
            deployment.metadata!!.putLabelsItem("component", instanceName.name)
            deployment.spec!!.selector.putMatchLabelsItem("component", instanceName.name)
            deployment.spec!!.template.metadata!!.putLabelsItem("component", instanceName.name)
            deployment.spec!!.replicas(1)
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("modelix_workspace_id").value(workspace.id))
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("REPOSITORY_ID").value("workspace_${workspace.id}"))
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("modelix_workspace_hash").value(workspace.hash().hash))
            val token = userToken?.jwt ?: let {
                val allowWrite  = if (owner is SharedInstanceOwner) {
                    workspace.sharedInstances.find { it.name == owner.name }?.allowWrite ?: false
                } else {
                    false
                }
                val scopes = setOfNotNull(KeycloakScope.READ, KeycloakScope.WRITE.takeIf { allowWrite })
                KeycloakUtils.createToken(listOf(
                    workspaceResourceType.createInstance(workspace.id) to setOf(KeycloakScope.READ),
                    KeycloakResourceType.MODEL_SERVER_ENTRY.createInstance("workspace-" + workspace.id) to scopes,
                ))
            }
            deployment.spec!!.template.spec!!.containers[0]
                .addEnvItem(V1EnvVar().name("INITIAL_JWT_TOKEN").value(token.token))
            loadWorkspaceSpecificValues(workspace, deployment)
            println("Creating deployment: ")
            println(Yaml.dump(deployment))
            appsApi.createNamespacedDeployment(KUBERNETES_NAMESPACE, deployment, null, null, null)
        }
        val coreApi = CoreV1Api()
        val services = coreApi.listNamespacedService(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false)
        val serviceExists = services.items.stream().anyMatch { s: V1Service -> instanceName.name == s.metadata!!.name }
        if (!serviceExists) {
            val service = coreApi.readNamespacedService(originalDeploymentName, KUBERNETES_NAMESPACE, null, null, null)
            service.metadata!!.putAnnotationsItem("kubectl.kubernetes.io/last-applied-configuration", null)
            service.metadata!!.managedFields = null
            service.metadata!!.uid = null
            service.metadata!!.resourceVersion(null)
            service.spec!!.clusterIP = null
            service.spec!!.ports!!.forEach(Consumer { p: V1ServicePort -> p.nodePort(null) })
            service.status = null
            service.metadata!!.name(instanceName.name)
            service.metadata!!.putLabelsItem("component", instanceName.name)
            service.metadata!!.name(instanceName.name)
            service.spec!!.putSelectorItem("component", instanceName.name)
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
        private val owner2deployment: MutableMap<InstanceOwner, InstanceName> = HashMap()
        private var numberOfUnassignedAuto: Int? = null
        private var numberOfUnassignedSetByUser: Int? = null

        fun listDeployments(): List<Pair<InstanceOwner, InstanceName>> {
            return owner2deployment.map { it.key to it.value }
        }

        @Synchronized
        fun getOrCreate(userToken: AccessTokenPrincipal): InstanceName {
            val userId: String = userToken.getUserName() ?: throw RuntimeException("Token doesn't contain a user ID")
            var workspaceInstanceId = owner2deployment[UserInstanceOwner(userId)]
            if (workspaceInstanceId == null) {
                val unassignedInstanceKey = owner2deployment.keys.filterIsInstance<UnassignedInstanceOwner>().firstOrNull()
                if (unassignedInstanceKey == null) {
                    workspaceInstanceId = generateInstanceName(workspace)
                } else {
                    workspaceInstanceId = owner2deployment.remove(unassignedInstanceKey)!!
                    owner2deployment[unassignedInstanceKey] = generateInstanceName(workspace)
                }
                owner2deployment[UserInstanceOwner(userId)] = workspaceInstanceId
                dirty.set(true)
            }
            DeploymentTimeouts.update(workspaceInstanceId)
            return workspaceInstanceId
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
            val expectedNumUnassigned = getNumberOfUnassigned()

            val expectedInstances = (
                    workspace.sharedInstances.map { SharedInstanceOwner(it.name) }
                    + (0 until expectedNumUnassigned).map { UnassignedInstanceOwner(it) }
                ).toSet()
            val existingInstances = owner2deployment.keys.filterNot { it is UserInstanceOwner }.toSet()
            for (toRemove in (existingInstances - expectedInstances)) {
                owner2deployment.remove(toRemove)
                dirty.set(true)
            }
            for (toAdd in (expectedInstances - existingInstances)) {
                owner2deployment[toAdd] = generateInstanceName(workspace)
                dirty.set(true)
            }
        }

        @Synchronized
        fun getAllDeploymentNames(): List<InstanceName> = owner2deployment.values.toList()

        @Synchronized
        fun getAllDeploymentNamesAndUserIds(): List<Pair<InstanceName, InstanceOwner>> =
            owner2deployment.map { it.value to it.key }

        @Synchronized
        fun removeTimedOut() {
            val entries = owner2deployment.entries.toList()
            for ((owner, instanceName) in entries) {
                if (owner is UserInstanceOwner && DeploymentTimeouts.isTimedOut(instanceName)) {
                    owner2deployment.remove(owner, instanceName)
                    dirty.set(true)
                }
            }
        }
    }

    companion object {
        private val LOG = mu.KotlinLogging.logger {}
        val KUBERNETES_NAMESPACE = System.getenv("WORKSPACE_CLIENT_NAMESPACE") ?: "default"
        val INSTANCE_PREFIX = System.getenv("WORKSPACE_CLIENT_PREFIX") ?: "wsclt-"
        val WORKSPACE_CLIENT_DEPLOYMENT_NAME = System.getenv("WORKSPACE_CLIENT_DEPLOYMENT_NAME") ?: "workspace-client"
        val WORKSPACE_PATTERN = Pattern.compile("workspace-([a-f0-9]+)-([a-zA-Z0-9\\-_\\*]+)")
        val INSTANCE = DeploymentManager()
    }
}

@JvmInline
value class InstanceName(val name: String)