
description = "Run MPS headless"

plugins {
    kotlin("jvm") version "1.5.31"
    kotlin("plugin.serialization") version "1.5.31"
    id("application")
}

application {
    mainClass.set("org.modelix.headlessmps.ModelImportMain")
    mainClassName = "org.modelix.headlessmps.ModelImportMain"
}

dependencies {
    compileOnly(fileTree("../artifacts/mps/lib") {
        include("*.jar")
    })
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}

val copyDependencies = task("copyDependencies", Copy::class) {
    from(configurations.default)
    into(File(File("build"), "libs"))
}

tasks.getByName("assemble") {
    dependsOn(copyDependencies)
}