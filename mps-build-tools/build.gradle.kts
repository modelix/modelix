import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

description = "Replacement for the MPS build language"
val ktorVersion = "1.6.5"
val kotlinCoroutinesVersion = "1.5.2"
val kotlinVersion = "1.5.31"
val logbackVersion = "1.2.1"

plugins {
    kotlin("jvm")
    id("application")
    id("com.github.johnrengelman.shadow") version "6.1.0"
}

tasks.withType<ShadowJar> {
    archiveVersion.set("latest")
}

dependencies {
    implementation(project(":headless-mps"))
    implementation("org.zeroturnaround:zt-zip:1.14")
    implementation("org.apache.commons:commons-text:1.9")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}