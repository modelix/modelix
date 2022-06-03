import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

description = "Library that checks is allowed to do something"

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
    id("application")
    id("com.github.johnrengelman.shadow") version "6.1.0"
}

application {
    mainClass.set("io.ktor.server.netty.EngineMain")
    mainClassName = "io.ktor.server.netty.EngineMain"
}

tasks.withType<ShadowJar> {
    archiveVersion.set("latest")
}

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.3")
    implementation("com.charleskorn.kaml:kaml:0.44.0")
    implementation(project(":authorization"))
    val ktorVersion = "1.6.5"
    implementation("io.ktor", "ktor-server-core", ktorVersion)
    implementation("io.ktor", "ktor-server-netty", ktorVersion)
    implementation("io.ktor", "ktor-html-builder", ktorVersion)
    implementation("ch.qos.logback", "logback-classic", "1.2.1")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}