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

import org.modelix.model.api.IConcept

interface IConceptSerializer {

    fun serialize(concept: IConcept): String?
    fun deserialize(serialized: String): IConcept?

    companion object {
        private val serializers: MutableSet<IConceptSerializer> = HashSet()

        fun register(serializer: IConceptSerializer) {
            serializers.add(serializer)
        }

        fun serialize(concept: IConcept?): String? {
            if (concept == null) return null
            return serializers.map { it.serialize(concept) }.firstOrNull { it != null }
                ?: throw RuntimeException("No serializer found for ${concept::class}")
        }

        fun deserialize(serialized: String?): IConcept? {
            if (serialized == null) return null
            return serializers.map { it.deserialize(serialized) }.firstOrNull { it != null }
                ?: throw RuntimeException("No deserializer found for: $serialized")
        }
    }
}
