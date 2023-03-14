
description = "Run MPS headless"

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
    id("application")
    id("maven-publish")
}

application {
    mainClass.set("org.modelix.headlessmps.ModelImportMain")
}

val kotlinxSerializationVersion: String by rootProject
dependencies {
    compileOnly(fileTree("../artifacts/mps/lib") {
        include("mps-core.jar")
        include("mps-environment.jar")
        include("mps-openapi.jar")
        include("mps-platform.jar")
        include("platform-api.jar")
        include("util.jar")
    })
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:$kotlinxSerializationVersion")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}

val copyDependencies = task("copyDependencies", Copy::class) {
    from(configurations.runtimeClasspath)
    into(File(File("build"), "libs"))
}

tasks.getByName("jar") {
    dependsOn(copyDependencies)
}

tasks.getByName("compileKotlin") {
    dependsOn(":mps:resolveMps")
}

publishing {
    publications {
        create<MavenPublication>("maven") {
            groupId = "org.modelix"
            artifactId = "headless-mps"
            version = "" + rootProject.ext.get("modelixVersion")

            from(components["java"])
        }
    }
}