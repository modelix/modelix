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

import org.modelix.model.api.INodeReference

interface INodeReferenceSerializer {

    fun serialize(ref: INodeReference): String?
    fun deserialize(serialized: String): INodeReference?

    companion object {
        private val serializers: MutableSet<INodeReferenceSerializer> = HashSet()

        fun register(serializer: INodeReferenceSerializer) {
            serializers.add(serializer)
        }

        fun unregister(serializer: INodeReferenceSerializer) {
            serializers.remove(serializer)
        }

        fun serialize(ref: INodeReference): String {
            return serializers.map { it.serialize(ref) }.firstOrNull { it != null }
                ?: throw RuntimeException("No serializer found for ${ref::class}")
        }

        fun deserialize(serialized: String): INodeReference {
            return serializers.map { it.deserialize(serialized) }.firstOrNull { it != null }
                ?: throw RuntimeException("No deserializer found for: $serialized")
        }
    }
}
