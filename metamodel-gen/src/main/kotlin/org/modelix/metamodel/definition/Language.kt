package org.modelix.metamodel.definition

import kotlinx.serialization.Serializable

@Serializable
data class Language(
    val name: String,
    val concepts: List<Concept>,
)

@Serializable
data class Concept(
    val name: String,
    val properties: List<Property> = emptyList(),
    val children: List<Child> = emptyList(),
    val references: List<Reference> = emptyList(),
    val extends: List<String> = emptyList(),
)

@Serializable
data class Property(
    val name: String,
    val type: PropertyType = PropertyType.STRING
)

enum class PropertyType {
    STRING,
}

@Serializable
data class Child(
    val name: String,
    val type: String,
    val multiple: Boolean = false,
    val optional: Boolean = true,
)

@Serializable
data class Reference(
    val name: String,
    val type: String,
    val optional: Boolean = true,
)
