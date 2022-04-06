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
import org.modelix.instancesmanager.DeploymentManager
import java.lang.InterruptedException
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicBoolean
import org.modelix.model.client.RestWebModelClient
import io.kubernetes.client.openapi.apis.AppsV1Api
import io.kubernetes.client.openapi.models.V1DeploymentList
import io.kubernetes.client.openapi.models.V1Deployment
import io.kubernetes.client.openapi.models.V1ObjectMeta
import io.kubernetes.client.openapi.ApiException
import io.kubernetes.client.openapi.Configuration
import javax.servlet.http.HttpServletRequest
import java.io.IOException
import java.lang.RuntimeException
import io.kubernetes.client.openapi.apis.CoreV1Api
import io.kubernetes.client.openapi.models.V1PodList
import io.kubernetes.client.openapi.models.V1Pod
import io.kubernetes.client.openapi.models.V1EnvVar
import io.kubernetes.client.openapi.models.V1ServiceList
import io.kubernetes.client.openapi.models.V1Service
import io.kubernetes.client.openapi.models.V1ServicePort
import io.kubernetes.client.openapi.models.V1Container
import io.kubernetes.client.openapi.models.V1ResourceRequirements
import io.kubernetes.client.util.ClientBuilder
import io.kubernetes.client.util.Yaml
import org.apache.log4j.Logger
import org.modelix.instancesmanager.DeploymentTimeouts
import java.lang.NumberFormatException
import javax.servlet.http.HttpServletResponse
import org.modelix.instancesmanager.ProxyServletWithWebsocketSupport
import java.net.URISyntaxException
import javax.servlet.ServletException
import org.eclipse.jetty.proxy.ProxyServlet
import org.eclipse.jetty.server.Request
import org.json.JSONObject
import java.lang.Exception
import java.util.*
import java.util.function.Consumer
import java.util.regex.Pattern
import java.util.stream.Collectors
import java.util.stream.Stream
import javax.servlet.ServletContext

class DeploymentManager {
    private val cleanupThread: Thread = object : Thread() {
        override fun run() {
            while (true) {
                try {
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
    private val assignments = Collections.synchronizedMap(HashMap<String?, Assignments>())
    private val dirty = AtomicBoolean(true)
    private val modelClient = RestWebModelClient(System.getenv("model_server_url"))
    private fun getAssignments(originalDeploymentName: String?): Assignments {
        return assignments.computeIfAbsent(originalDeploymentName) { originalDeploymentName: String? -> Assignments(originalDeploymentName) }
    }

    private fun generatePersonalDeploymentName(originalDeploymentName: String?): String {
        val cleanName = originalDeploymentName!!.lowercase(Locale.getDefault()).replace("[^a-z0-9-]".toRegex(), "")
        var deploymentName = PERSONAL_DEPLOYMENT_PREFIX + managerId + "-" + cleanName
        val suffix = "-" + java.lang.Long.toHexString(deploymentSuffixSequence.incrementAndGet())
        val charsToRemove = deploymentName.length + suffix.length - (63 - 16)
        if (charsToRemove > 0) deploymentName = deploymentName.substring(0, deploymentName.length - charsToRemove)
        return deploymentName + suffix
    }

    private fun init() {
        val appsApi = AppsV1Api()
        var deployments: V1DeploymentList? = null
        try {
            deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (deployment in deployments.items) {
                val metadata = deployment.metadata ?: continue
                val annotations = metadata.annotations ?: continue
                if ("true" == annotations[INSTANCE_PER_USER_ANNOTATION_KEY]) {
                    getAssignments(metadata.name).setNumberOfUnassigned(deployment)
                }
            }
        } catch (e: ApiException) {
            LOG.error("", e)
        }
    }

    fun redirect(baseRequest: Request?, request: HttpServletRequest): RedirectedURL? {
        val redirected: RedirectedURL = RedirectedURL.Companion.redirect(baseRequest, request)
            ?: return null
        if (redirected.userId == null) return redirected
        var originalDeploymentName = redirected.originalDeploymentName
        val assignmentKey = originalDeploymentName
        if (WORKSPACE_PATTERN.matcher(originalDeploymentName).matches()) {
            originalDeploymentName = "workspace-client"
        }
        try {
            val originalDeployment = getDeployment(originalDeploymentName, 3)
            val metadata = originalDeployment!!.metadata
            val annotations = metadata?.annotations
            val isInstancePerUser = annotations != null && "true" == annotations[INSTANCE_PER_USER_ANNOTATION_KEY]
            if (!isInstancePerUser) {
                return null
            } else {
                val assignments = getAssignments(assignmentKey)
                redirected.personalDeploymentName = assignments.getOrCreate(redirected.userId)
                assignments.setNumberOfUnassigned(originalDeployment)
                reconcileIfDirty()
            }
        } catch (e: ApiException) {
            LOG.error("Failed to get deployment $originalDeploymentName", e)
        }
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

    private fun reconcileDeployments() {
        // TODO doesn't work with multiple instances of this proxy
        synchronized(reconcileLock) {
            try {
                val expectedDeployments: MutableMap<String?, String?> = HashMap()
                val existingDeployments: MutableSet<String?> = HashSet()
                synchronized(assignments) {
                    for (assignment in assignments.values) {
                        assignment.removeTimedOut()
                        for (deployment in assignment.getAllDeploymentNames()) {
                            expectedDeployments[deployment] = assignment.originalDeploymentName
                        }
                    }
                }
                val appsApi = AppsV1Api()
                val coreApi = CoreV1Api()
                val deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
                for (deployment in deployments.items) {
                    val name = deployment.metadata!!.name
                    if (name!!.startsWith(PERSONAL_DEPLOYMENT_PREFIX)) {
                        existingDeployments.add(name)
                    }
                }
                val toAdd = expectedDeployments.keys.stream().filter { d: String? -> !existingDeployments.contains(d) }.collect(Collectors.toList())
                val toRemove = existingDeployments.stream().filter { d: String? -> !expectedDeployments.containsKey(d) }.collect(Collectors.toList())
                for (d in toRemove) {
                    appsApi.deleteNamespacedDeployment(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                    coreApi.deleteNamespacedService(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
                }
                for (d in toAdd) {
                    val originalDeploymentName = expectedDeployments[d]
                    try {
                        createDeployment(originalDeploymentName, d)
                    } catch (e: Exception) {
                        LOG.error("Failed to create deployment $originalDeploymentName / $d", e)
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

    fun getPodLogs(deploymentName: String?): String? {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null)
            for (pod in pods.items) {
                if (!pod.metadata!!.name!!.startsWith(deploymentName!!)) continue
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

    @Throws(IOException::class, ApiException::class)
    fun createDeployment(originalDeploymentName: String?, personalDeploymentName: String?): Boolean {
        var originalDeploymentName = originalDeploymentName
        var workspaceId: String? = null
        var workspaceHash: String? = null
        val matcher = WORKSPACE_PATTERN.matcher(originalDeploymentName)
        if (matcher.matches()) {
            workspaceId = matcher.group(1)
            workspaceHash = matcher.group(2)
            if (!workspaceHash.contains("*")) workspaceHash = workspaceHash.substring(0, 5) + "*" + workspaceHash.substring(5)
            originalDeploymentName = "workspace-client"
        }
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
            deployment.metadata!!.putAnnotationsItem(INSTANCE_PER_USER_ANNOTATION_KEY, null)
            deployment.metadata!!.putAnnotationsItem(MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY, null)
            deployment.metadata!!.name(personalDeploymentName)
            deployment.metadata!!.putLabelsItem("app", personalDeploymentName)
            deployment.spec!!.selector.putMatchLabelsItem("app", personalDeploymentName)
            deployment.spec!!.template.metadata!!.putLabelsItem("app", personalDeploymentName)
            deployment.spec!!.replicas(1)
            if (workspaceId != null) {
                deployment.spec!!.template.spec!!.containers[0]
                    .addEnvItem(V1EnvVar().name("modelix_workspace_id").value(workspaceId))
                deployment.spec!!.template.spec!!.containers[0]
                    .addEnvItem(V1EnvVar().name("REPOSITORY_ID").value("workspace_$workspaceId"))
            }
            if (workspaceHash != null) {
                deployment.spec!!.template.spec!!.containers[0]
                    .addEnvItem(V1EnvVar().name("modelix_workspace_hash").value(workspaceHash))
                loadWorkspaceSpecificValues(workspaceHash, deployment)
            }
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

    private fun loadWorkspaceSpecificValues(workspaceHash: String, deployment: V1Deployment) {
        try {
            val workspaceSpecString = modelClient[workspaceHash] ?: return
            val workspaceSpec = JSONObject(workspaceSpecString)
            val container = deployment.spec!!.template.spec!!.containers[0]
            val mpsVersion = workspaceSpec.optString("mpsVersion")
            if (mpsVersion != null && mpsVersion.matches("""20\d\d\.\d""".toRegex())) {
                var image = container.image
                if (image != null) {
                    image = image.replaceFirst(""":20\d\d\.\d\.(\d+)""".toRegex(), ":$mpsVersion.$1")
                    container.setImage(image)
                }
            }
            val resources = container.resources ?: return
            val memoryLimit = Quantity.fromString(workspaceSpec.optString("memoryLimit", "2Gi"))
            val limits = resources.limits
            if (limits != null) limits["memory"] = memoryLimit
            val requests = resources.requests
            if (requests != null) requests["memory"] = memoryLimit
        } catch (ex: Exception) {
            LOG.error("Failed to configure the deployment for the workspace $workspaceHash", ex)
        }
    }

    private inner class Assignments(val originalDeploymentName: String?) {
        private val userId2deployment: MutableMap<String?, String?> = HashMap()
        private val unassignedDeployments: MutableList<String?> = LinkedList()
        @Synchronized
        fun getOrCreate(userId: String?): String? {
            var personalDeployment = userId2deployment[userId]
            if (personalDeployment == null) {
                if (unassignedDeployments.isEmpty()) {
                    personalDeployment = generatePersonalDeploymentName(originalDeploymentName)
                } else {
                    personalDeployment = unassignedDeployments.removeAt(0)
                    unassignedDeployments.add(generatePersonalDeploymentName(originalDeploymentName))
                }
                userId2deployment[userId] = personalDeployment
                dirty.set(true)
            }
            DeploymentTimeouts.Companion.INSTANCE.update(personalDeployment)
            return personalDeployment
        }

        @Synchronized
        fun setNumberOfUnassigned(targetNumber: Int) {
            while (unassignedDeployments.size > targetNumber) {
                unassignedDeployments.removeAt(unassignedDeployments.size - 1)
                dirty.set(true)
            }
            while (unassignedDeployments.size < targetNumber) {
                unassignedDeployments.add(generatePersonalDeploymentName(originalDeploymentName))
                dirty.set(true)
            }
        }

        fun setNumberOfUnassigned(deployment: V1Deployment?) {
            var maxUnassignedInstances = 1
            try {
                val metadata = deployment!!.metadata
                if (metadata != null) {
                    val annotations = metadata.annotations
                    if (annotations != null) {
                        val maxUnassignedInstancesStr = annotations[MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY]
                        if (maxUnassignedInstancesStr != null) {
                            maxUnassignedInstances = maxUnassignedInstancesStr.toInt()
                        }
                    }
                }
            } catch (e: NumberFormatException) {
            }
            setNumberOfUnassigned(Math.max(0, maxUnassignedInstances))
        }

        @Synchronized
        fun getAllDeploymentNames(): List<String?> = userId2deployment.values + unassignedDeployments

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
        const val KUBERNETES_NAMESPACE = "default"
        val INSTANCE = DeploymentManager()
        const val INSTANCE_PER_USER_ANNOTATION_KEY = "instance-per-user"
        const val MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY = "max-unassigned-instances"
        const val PERSONAL_DEPLOYMENT_PREFIX = "user-copy-"
        val WORKSPACE_PATTERN = Pattern.compile("workspace-([a-f0-9]+)-([a-zA-Z0-9\\-_\\*]+)")
    }
}