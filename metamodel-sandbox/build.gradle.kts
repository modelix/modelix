import org.modelix.metamodel.generator.*

buildscript {
    repositories {
        mavenLocal()
        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    }
    dependencies {
        val modelApiVersion: String by rootProject
        classpath("org.modelix:metamodel-generator:$modelApiVersion")
    }
}

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

dependencies {
    val modelApiVersion: String by rootProject
    implementation("org.modelix:metamodel-runtime:$modelApiVersion")
    testImplementation(kotlin("test"))
    testImplementation(kotlin("test-junit"))
}

val generatorOutputDir = file("src/main/kotlin_gen")
sourceSets["main"].java.srcDir(generatorOutputDir)

val entitiesLanguage = newLanguage("org.modelix.entities2") {
    concept("INamedConcept") {
        property("name")
    }
    concept("Entity") {
        extends("INamedConcept")
        child0n("properties", "Property")
    }
    concept("Property") {
        extends("INamedConcept")
    }
}

val generateMetaModelSources = tasks.create("generateMetaModelSources") {
    val languagesDir = file("languages")
    inputs.dir(languagesDir)
    outputs.dir(generatorOutputDir)
    doLast {
        val languages = languagesDir.walk()
            .filter { it.extension.toLowerCase() == "yaml" }
            .map { Language.fromFile(it) }
            .toList()
        MetaModelGenerator(generatorOutputDir.toPath()).generate(languages + entitiesLanguage + org.modelix.languages.Expressions.lang)
    }
}

tasks.named("compileKotlin") {
    dependsOn(generateMetaModelSources)
}