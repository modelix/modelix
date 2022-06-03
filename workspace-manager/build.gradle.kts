import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

description = "Allows multiple clients to work on the same set of modules from different sources"
val ktorVersion = "2.0.2"
val kotlinCoroutinesVersion = "1.5.2"
val kotlinVersion = "1.6.21"
val logbackVersion = "1.2.1"

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
    implementation("io.ktor:ktor-server-core:$ktorVersion")
    implementation("io.ktor:ktor-server-cors:$ktorVersion")
    implementation("io.ktor","ktor-server-html-builder", ktorVersion)
    implementation("io.ktor:ktor-server-auth:$ktorVersion")
    implementation("io.ktor", "ktor-server-netty", ktorVersion)
    implementation("ch.qos.logback", "logback-classic", logbackVersion)
    implementation("org.jetbrains.kotlinx", "kotlinx-coroutines-jdk8", kotlinCoroutinesVersion)
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation("org.eclipse.jgit:org.eclipse.jgit:6.1.0.202203080745-r")
    implementation("org.apache.maven.shared:maven-invoker:3.1.0")
    implementation("org.zeroturnaround:zt-zip:1.14")
    implementation("org.apache.commons:commons-text:1.9")
    implementation("org.jasypt:jasypt:1.9.3")
    implementation(project(":model-client", configuration = "jvmRuntimeElements"))
    implementation(project(":headless-mps"))
    implementation(project(":workspaces"))
    implementation(project(":gitui"))
    implementation(project(":authorization"))
    implementation("org.modelix.mpsbuild:build-tools:1.0.6")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}