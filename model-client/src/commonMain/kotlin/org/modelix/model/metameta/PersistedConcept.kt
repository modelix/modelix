/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.metameta

import org.modelix.model.api.*
import org.modelix.model.area.IArea

data class PersistedConcept(val id: Long): IConcept, IConceptReference {
    override val childLinks: List<IChildLink>
        get() = throw UnsupportedOperationException()
    override val language: ILanguage?
        get() = throw UnsupportedOperationException()
    override val properties: List<IProperty>
        get() = throw UnsupportedOperationException()
    override val referenceLinks: List<IReferenceLink>
        get() = throw UnsupportedOperationException()

    override fun getChildLink(name: String): IChildLink {
        throw UnsupportedOperationException()
    }

    override fun getDirectSuperConcepts(): List<IConcept> {
        throw UnsupportedOperationException()
    }

    override fun getLongName(): String {
        throw UnsupportedOperationException()
    }

    override fun getProperty(name: String): IProperty {
        throw UnsupportedOperationException()
    }

    override fun getReference(): IConceptReference {
        throw UnsupportedOperationException()
    }

    override fun getReferenceLink(name: String): IReferenceLink {
        throw UnsupportedOperationException()
    }

    override fun getShortName(): String {
        throw UnsupportedOperationException()
    }

    override fun getUID(): String {
        throw UnsupportedOperationException()
    }

    override fun isAbstract(): Boolean {
        throw UnsupportedOperationException()
    }

    override fun isExactly(concept: IConcept?): Boolean {
        throw UnsupportedOperationException()
    }

    override fun isSubConceptOf(superConcept: IConcept?): Boolean {
        throw UnsupportedOperationException()
    }

    override fun resolve(area: IArea?): IConcept? {
        throw UnsupportedOperationException()
    }
}