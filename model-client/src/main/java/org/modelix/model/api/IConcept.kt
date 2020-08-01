package org.modelix.model.api

interface IConcept {
    fun isSubconceptOf(superConcept: IConcept?): Boolean
    fun isExactly(concept: IConcept?): Boolean
    val properties: Iterable<IProperty?>?
    val childLinks: Iterable<IChildLink?>?
    val referenceLinks: Iterable<IReferenceLink?>?
    fun getProperty(name: String?): IProperty?
    fun getChildLink(name: String?): IChildLink?
    fun getReferenceLink(name: String?): IReferenceLink?
}