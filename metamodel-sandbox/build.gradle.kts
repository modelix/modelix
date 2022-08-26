plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

dependencies {
    implementation(project(":metamodel-runtime"))
    testImplementation(kotlin("test"))
    testImplementation(kotlin("test-junit"))
}
