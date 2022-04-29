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

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import java.util.concurrent.Executors
import java.util.concurrent.Future
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
    fun fixDelay(periodMs: Long, r: Runnable): ScheduledFuture<*> {
        return fixDelay(periodMs, periodMs * 3, r)
    }

    @JvmStatic
    fun fixDelay(periodMs: Long, timeoutMs: Long, r: Runnable): ScheduledFuture<*> {
        val body = Runnable {
            try {
                r.run()
            } catch (ex: Exception) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error("", ex)
                }
            }
        }

        var workerTask: Future<*>? = null
        return SCHEDULED.scheduleAtFixedRate({
            if (workerTask == null || (workerTask?.isDone == true) || (workerTask?.isCancelled == true)) {
                workerTask = FIXED.submit(body)
                SCHEDULED.schedule({
                    workerTask?.cancel(true)
                }, timeoutMs, TimeUnit.MILLISECONDS)
            }
        }, periodMs, periodMs, TimeUnit.MILLISECONDS)
    }
}
