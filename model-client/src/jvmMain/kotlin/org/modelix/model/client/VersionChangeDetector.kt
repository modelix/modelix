/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.client

import kotlinx.coroutines.*
import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore

abstract class VersionChangeDetector(private val store: IKeyValueStore, private val key: String) {
    private val keyListener: IKeyListener
    var lastVersionHash: String? = null
        private set
    private var job: Job? = null
    private val coroutineScope = CoroutineScope(Dispatchers.Default)

    @Synchronized
    private fun versionChanged(newVersion: String?) {
        if (newVersion == lastVersionHash) {
            return
        }
        try {
            processVersionChange(lastVersionHash, newVersion)
        } catch (ex: Exception) {
            if (LOG.isEnabledFor(Level.ERROR)) {
                LOG.error("", ex)
            }
        }
        lastVersionHash = newVersion
    }

    protected abstract fun processVersionChange(oldVersion: String?, newVersion: String?)
    fun dispose() {
        job?.cancel("disposed")
        coroutineScope.cancel("disposed")
        store.removeListener(key, keyListener)
    }

    companion object {
        private val LOG = LogManager.getLogger(VersionChangeDetector::class.java)
    }

    init {
        keyListener = object : IKeyListener {
            override fun changed(key: String, versionHash: String?) {
                if (LOG.isDebugEnabled) {
                    LOG.debug("Listener received new version $versionHash")
                }
                versionChanged(versionHash)
            }
        }

        SharedExecutors.FIXED.execute { store.listen(key, keyListener) }
        job = coroutineScope.launch {
            while (isActive) {
                try {
                    val version = store[key]
                    if (version != lastVersionHash) {
                        if (LOG.isDebugEnabled) {
                            LOG.debug("New version detected by polling: $version")
                        }
                        versionChanged(version)
                    }
                } catch (e: Exception) {
                    LOG.warn("Failed to detect version change for $key: ${e.message}")
                }
                delay(3000)
            }
        }
    }
}
