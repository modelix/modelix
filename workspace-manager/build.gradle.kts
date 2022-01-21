description = "Allows multiple clients to work on the same set of modules from different sources"

val ktorVersion = "1.6.5"
val kotlinCoroutinesVersion = "1.5.2"
val kotlinVersion = "1.5.31"
val logbackVersion = "1.2.1"

plugins {
    kotlin("jvm") version "1.5.31"
    kotlin("plugin.serialization") version "1.5.31"
    id("application")
}

application {
    mainClass.set("io.ktor.server.netty.EngineMain")
}

dependencies {
    implementation("io.ktor", "ktor-server-core", ktorVersion)
    implementation("io.ktor", "ktor-server-netty", ktorVersion)
    implementation("ch.qos.logback", "logback-classic", logbackVersion)
    implementation("org.jetbrains.kotlinx", "kotlinx-coroutines-jdk8", kotlinCoroutinesVersion)
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation(project(":model-client"))
}
