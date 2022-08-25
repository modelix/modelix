plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation(project(":metamodel-runtime"))
    implementation("com.squareup:kotlinpoet:1.12.0")
    testImplementation(kotlin("test"))
    testImplementation(kotlin("test-junit"))
}

description = "Generator for Kotlin meta model classes"