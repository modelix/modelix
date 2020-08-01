package org.modelix.model.client

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.client.SharedExecutors.fixDelay
import java.util.concurrent.ScheduledFuture

abstract class VersionChangeDetector(private val store: IKeyValueStore, private val key: String) {
    private val keyListener: IKeyListener
    var lastVersionHash: String? = null
        private set
    private val pollingTask: ScheduledFuture<*>
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
        pollingTask.cancel(false)
        store.removeListener(key, keyListener)
    }

    companion object {
        private val LOG = LogManager.getLogger(VersionChangeDetector::class.java)
    }

    init {
        keyListener = object : IKeyListener {
            override fun changed(key: String?, versionHash: String?) {
                if (LOG.isDebugEnabled) {
                    LOG.debug("Listener received new version $versionHash")
                }
                versionChanged(versionHash)
            }
        }
        SharedExecutors.FIXED.execute { store.listen(key, keyListener) }
        pollingTask = fixDelay(3000, object : Runnable {
            override fun run() {
                val version = store[key]
                if (version == lastVersionHash) {
                    return
                }
                if (LOG.isDebugEnabled) {
                    LOG.debug("New version detected by polling: $version")
                }
                versionChanged(version)
            }
        })
    }
}