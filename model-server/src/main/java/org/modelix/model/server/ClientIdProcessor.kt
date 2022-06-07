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
package org.modelix.model.server

import javax.cache.processor.EntryProcessor
import javax.cache.processor.EntryProcessorException
import javax.cache.processor.MutableEntry

class ClientIdProcessor : EntryProcessor<String?, String?, Long> {
    @Throws(EntryProcessorException::class)
    override fun process(mutableEntry: MutableEntry<String?, String?>, vararg objects: Any): Long {
        val idStr = mutableEntry.value
        var id = idStr?.toLong() ?: 0
        id++
        mutableEntry.value = java.lang.Long.toString(id)
        return id
    }
}