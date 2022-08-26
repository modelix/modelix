import org.modelix.metamodel.definition.Language
import org.modelix.metamodel.generator.KotlinGenerator

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

val generateMetaModelSources = tasks.create("generateMetaModelSources") {
    val languageFile = file("src/main/resources/EntitiesLanguage.yaml")
    inputs.file(languageFile)
    outputs.dir(generatorOutputDir)
    doLast {
        KotlinGenerator(generatorOutputDir.toPath()).generate(listOf(
            Language.fromFile(languageFile)
        ))
    }
}

tasks.named("compileKotlin") {
    dependsOn(generateMetaModelSources)
}