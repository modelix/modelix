package org.modelix.languages

import org.modelix.metamodel.generator.newLanguage

object Expressions {
    val lang = newLanguage("org.modelix.languages.expressions") {
        concept("Expression")
        concept("BinaryExpression") {
            extends("Expression")
            child1("left", "Expression")
            child1("right", "Expression")

            concept("PlusExpression")
            concept("MinusExpression")
            concept("MulExpression")
            concept("DivExpression")
        }
        concept("IntegerConstant") {
            extends("Expression")
            property("value")
        }
        concept("StringLiteral") {
            extends("Expression")
            property("value")
        }
        concept("MultipleInheritance") {
            extends("BinaryExpression")
            extends("IntegerConstant")
        }
    }

    init {
        println(lang.toYaml())
    }
}