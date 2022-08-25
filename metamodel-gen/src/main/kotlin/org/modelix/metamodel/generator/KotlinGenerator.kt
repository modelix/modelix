package org.modelix.metamodel.generator

import com.squareup.kotlinpoet.*
import org.modelix.metamodel.definition.Concept
import org.modelix.metamodel.definition.Language
import org.modelix.model.api.INode
import java.nio.file.Path


class KotlinGenerator(val outputDir: Path) {

    fun generate(languages: List<Language>) {
        for (language in languages) {
            val builder = FileSpec.builder(language.name, "Language")
            val file = builder.addType(generateLanguage(language)).build()
            for (concept in language.concepts) {
                generateConcept(language, concept)
            }
            file.writeTo(outputDir)
        }
    }

    private fun generateLanguage(language: Language): TypeSpec {
        val builder = TypeSpec.classBuilder(ClassName(language.name, "Language"))
        for (concept in language.concepts) {
            val conceptProperty = PropertySpec.builder(concept.name, ClassName(language.name, concept.name))
                .initializer("${concept.name}()")
                .build()
            builder.addProperty(conceptProperty)
        }
        return builder.build()
    }

    private fun generateConcept(language: Language, concept: Concept) {
        val fileBuilder = FileSpec.builder(language.name, concept.name)
        val builder = TypeSpec.classBuilder(ClassName(language.name, concept.name))
            .primaryConstructor(FunSpec.constructorBuilder().addParameter("node", INode::class).build())
            .addProperty(PropertySpec.builder("node", INode::class).initializer("node").build())
        fileBuilder.addType(builder.build())
        fileBuilder.build().writeTo(outputDir)
    }
}