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
import org.modelix.model.api.ITree
import org.modelix.model.metameta.MetaMetaLanguage
import org.modelix.model.metameta.PersistedConceptSerializer

interface IConceptReferenceSerializer {

    fun serialize(concept: IConcept): String?
    fun deserialize(serialized: String, tree: ITree?): IConcept?

    companion object {
        private val serializers: MutableSet<IConceptReferenceSerializer> = LinkedHashSet()

        init {
            register(BootstrapConceptSerializer(listOf(MetaMetaLanguage.language_metameta)))
            register(PersistedConceptSerializer())
        }

        fun register(serializer: IConceptReferenceSerializer) {
            serializers.add(serializer)
        }

        fun unregister(serializer: IConceptReferenceSerializer) {
            serializers.remove(serializer)
        }

        fun serialize(concept: IConcept?): String? {
            if (concept == null) return null
            return serializers.map { it.serialize(concept) }.firstOrNull { it != null }
                ?: throw RuntimeException("No serializer found for ${concept::class}")
        }

        fun deserializeAll(serialized: String?, tree: ITree?): List<IConcept> {
            if (serialized == null) return listOf()
            return serializers.mapNotNull { it.deserialize(serialized, tree) }
        }

        fun deserialize(serialized: String?, tree: ITree?): IConcept? {
            if (serialized == null) return null
            for (s in serializers) {
                val deserialized = s.deserialize(serialized, tree)
                if (deserialized != null) return deserialized
            }
            throw RuntimeException("No deserializer found for: $serialized")
        }
    }
}
