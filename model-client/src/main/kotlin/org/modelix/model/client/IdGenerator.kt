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

import org.modelix.model.api.IIdGenerator
import java.util.concurrent.atomic.AtomicLong

class IdGenerator(clientId: Int) : IIdGenerator {
    protected val idSequence: AtomicLong
    private val clientId: Long
    override fun generate(): Long {
        val id = idSequence.incrementAndGet()
        if (id ushr 32 != clientId) {
            throw RuntimeException("End of ID range")
        }
        return id
    }

    init {
        this.clientId = clientId.toLong()
        idSequence = AtomicLong(this.clientId shl 32)
    }
}
