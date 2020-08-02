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

package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore
import java.util.function.BiFunction
import java.util.function.Function

interface IDeserializingKeyValueStore {
    val keyValueStore: IKeyValueStore?
    operator fun <T> get(hash: String?, deserializer: Function<String?, T>?): T?
    fun <T> getAll(hash: Iterable<String?>?, deserializer: BiFunction<String?, String?, T>?): Iterable<T>?
    fun put(hash: String?, deserialized: Any?, serialized: String?)
    fun prefetch(hash: String?)
}
