/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.workspace.manager

import io.kubernetes.client.openapi.Configuration
import io.kubernetes.client.openapi.apis.BatchV1Api
import io.kubernetes.client.openapi.apis.CoreV1Api
import io.kubernetes.client.openapi.models.V1Job
import io.kubernetes.client.util.ClientBuilder
import io.kubernetes.client.util.Yaml
import kotlinx.coroutines.*
import org.modelix.authorization.serviceAccountTokenProvider
import org.modelix.model.persistent.HashUtil
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceBuildStatus
import org.modelix.workspaces.WorkspaceHash
import java.io.IOException
import java.util.*
import kotlin.time.Duration.Companion.seconds

class WorkspaceJobQueue {

    private val workspaceHash2job: MutableMap<WorkspaceHash, Job> = HashMap()
    private val coroutinesScope = CoroutineScope(Dispatchers.Default)

    init {
        try {
            Configuration.setDefaultApiClient(ClientBuilder.cluster().build())
        } catch (e: IOException) {
            throw RuntimeException(e)
        }

        coroutinesScope.launch {
            while (coroutinesScope.isActive) {
                delay(3.seconds)
                try {
                    if (workspaceHash2job.isNotEmpty()) {
                        reconcileKubernetesJobs()
                        workspaceHash2job.values.forEach { it.updateLog() }
                    }
                } catch (ex: Exception) {
                    LOG.error(ex) { "" }
                }
            }
        }
    }

    fun dispose() {
        coroutinesScope.cancel("disposed")
    }

    fun removeByWorkspaceId(workspaceId: String) {
        synchronized(workspaceHash2job) {
            workspaceHash2job -= workspaceHash2job.filter { it.value.workspace.id == workspaceId }.keys
        }
    }

    fun getOrCreateJob(workspace: Workspace): Job {
        synchronized(workspaceHash2job) {
            return workspaceHash2job.getOrPut(workspace.hash()) { Job(workspace) }
        }
    }

    private fun reconcileKubernetesJobs() {
        val expectedJobs: Map<String, Job> = synchronized(workspaceHash2job) {
            workspaceHash2job.values.associateBy { it.kubernetesJobName }
        }
        val existingJobs: Map<String?, V1Job> = BatchV1Api().listNamespacedJob(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null, null)
            .items.filter { it.metadata?.name?.startsWith(JOB_PREFIX) == true }.associateBy { it.metadata?.name }

        val unexpected: Map<String?, V1Job> = existingJobs - expectedJobs.keys
        for (toRemove in unexpected) {
            expectedJobs[toRemove.key]?.updateLog()
            BatchV1Api().deleteNamespacedJob(toRemove.key, KUBERNETES_NAMESPACE, null, null, null, null, null, null)
        }

        val missingJobs: Map<String?, Job> = expectedJobs - existingJobs.keys
        for (missingJob in missingJobs.values) {
            when (missingJob.status) {
                WorkspaceBuildStatus.New, WorkspaceBuildStatus.Queued, WorkspaceBuildStatus.Running -> {}
                WorkspaceBuildStatus.FailedBuild, WorkspaceBuildStatus.FailedZip, WorkspaceBuildStatus.AllSuccessful, WorkspaceBuildStatus.ZipSuccessful -> continue
            }

            val job: V1Job = Yaml.loadAs(missingJob.generateJobYaml(), V1Job::class.java)

            BatchV1Api().createNamespacedJob(KUBERNETES_NAMESPACE, job, null, null, null, null)
            missingJob.kubernetesJob = job
            missingJob.status = WorkspaceBuildStatus.Queued
        }
    }

    private fun getPodLogs(podNamePrefix: String): String {
        try {
            val coreApi = CoreV1Api()
            val pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null, null)
            val matchingPods = pods.items.filter { it.metadata!!.name!!.startsWith(podNamePrefix) }
            return matchingPods.map { pod ->
                try {
                    coreApi.readNamespacedPodLog(
                        pod.metadata!!.name,
                        KUBERNETES_NAMESPACE,
                        pod.spec!!.containers[0].name,
                        null, null, null, "true", null, null, 10000, false)
                } catch (ex: Exception) {
                    ex.stackTraceToString()
                }
            }.joinToString("\n----------------------------------------------------------------------------\n")
        } catch (ex: Exception) {
            return ex.stackTraceToString()
        }
    }

    companion object {
        private val LOG = mu.KotlinLogging.logger {  }
        val KUBERNETES_NAMESPACE = System.getenv("KUBERNETES_NAMESPACE") ?: "default"
        val IMAGE_NAME = System.getenv("WORKSPACE_JOB_IMAGE_NAME") ?: "modelix/workspace-job"
        val IMAGE_VERSION = System.getenv("WORKSPACE_JOB_IMAGE_VERSION") ?: "latest"
        val HELM_PREFIX = System.getenv("KUBERNETES_PREFIX") ?: ""
        val JOB_PREFIX = HELM_PREFIX + "wsjob-"
    }

    inner class Job(val workspace: Workspace) {
        val kubernetesJobName = generateKubernetesJobName()
        var kubernetesJob: V1Job? = null
        var status: WorkspaceBuildStatus = WorkspaceBuildStatus.New

        private var cachedPodLog: String? = null
        fun updateLog() {
            val log = getPodLogs(kubernetesJobName)
            cachedPodLog = log
            val lastStatusAsText = Regex("""###${WorkspaceBuildStatus::class.simpleName} = (.+)###""")
                .findAll(log).lastOrNull()?.let { it.groupValues[1] }
            if (lastStatusAsText != null) {
                try {
                    val lastStatus = WorkspaceBuildStatus.valueOf(lastStatusAsText)
                    status = lastStatus
                } catch (ex: IllegalArgumentException) {}
            }
        }
        fun getLog(): String {
            return cachedPodLog ?: ""
        }

        fun generateJobYaml(jobName: String = kubernetesJobName): String {
            var imageVersion = IMAGE_VERSION
            val mpsVersion = workspace.mpsVersion
            if (mpsVersion != null && mpsVersion.matches("""20\d\d\.\d""".toRegex())) {
                imageVersion = imageVersion.replaceFirst("""20\d\d\.\d\.(\d+)""".toRegex(), "$mpsVersion.$1")
            }

            val memoryLimit = workspace.memoryLimit
            val jwtToken = serviceAccountTokenProvider() // TODO generate token with less permissions
            return """
                apiVersion: batch/v1
                kind: Job
                metadata:
                  name: "$jobName"
                spec:
                  ttlSecondsAfterFinished: 60
                  template:
                    spec:
                      tolerations:
                      - key: "workspace-client"
                        operator: "Exists"
                        effect: "NoExecute"                    
                      containers:
                      - name: wsjob
                        image: $IMAGE_NAME:$imageVersion
                        command: ["/workspace-job/bin/workspace-job"]
                        env:
                        - name: modelix_workspace_id
                          value: ${workspace.id}  
                        - name: modelix_workspace_hash
                          value: ${workspace.hash()}   
                        - name: modelix_workspace_server
                          value: http://${HELM_PREFIX}workspace-manager:28104/      
                        - name: INITIAL_JWT_TOKEN
                          value: $jwtToken                   
                        resources: 
                          requests:
                            memory: $memoryLimit
                            cpu: "0.1"
                          limits:
                            memory: $memoryLimit
                            cpu: "1.0"                        
                      restartPolicy: Never
                  backoffLimit: 2
            """.trimIndent()
        }

        private fun generateKubernetesJobName(): String {
            val jobYamlHash = HashUtil.sha256(generateJobYaml("<unspecified>"))
            val cleanName = (workspace.id + "-" + workspace.hash().hash.take(5) + "-" + jobYamlHash).lowercase(Locale.getDefault()).replace("[^a-z0-9-]".toRegex(), "")
            var jobName = JOB_PREFIX + cleanName
            val charsToRemove = jobName.length - (63 - 16)
            if (charsToRemove > 0) jobName = jobName.substring(0, jobName.length - charsToRemove)
            return jobName
        }
    }
}