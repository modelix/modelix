package org.modelix.model.client

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import java.util.concurrent.Executors
import java.util.concurrent.ScheduledFuture
import java.util.concurrent.TimeUnit

object SharedExecutors {
    private val LOG = LogManager.getLogger(SharedExecutors::class.java)
    @JvmField
    val FIXED = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() + 1)
    val SCHEDULED = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() + 1)
    fun shutdownAll() {
        SCHEDULED.shutdown()
        FIXED.shutdown()
    }

    @JvmStatic
    fun fixDelay(milliSeconds: Int, r: Runnable): ScheduledFuture<*> {
        return SCHEDULED.scheduleWithFixedDelay(
            {
                try {
                    r.run()
                } catch (ex: Exception) {
                    if (LOG.isEnabledFor(Level.ERROR)) {
                        LOG.error("", ex)
                    }
                }
            },
            milliSeconds.toLong(), milliSeconds.toLong(), TimeUnit.MILLISECONDS
        )
    }
}
