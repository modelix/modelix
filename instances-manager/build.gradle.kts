import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

plugins {
    kotlin("jvm")
    java
    id("com.github.johnrengelman.shadow") version "7.1.2"
}
val modelixVersion: String by rootProject

group = "org.modelix"
version = modelixVersion
description = "Starts a separate MPS instance for each user"

tasks.named<JavaCompile>("compileJava") {
    sourceCompatibility = "11"
    targetCompatibility = "11"
}

defaultTasks.add("build")

repositories {
    mavenCentral()
}

tasks.withType<ShadowJar> {
    archiveVersion.set("latest")
}

val ktorVersion: String by rootProject
val kotlinCoroutinesVersion: String by rootProject
val kotlinVersion: String by rootProject
val kotlinLoggingVersion: String by rootProject
val logbackVersion: String by rootProject
val modelixCoreVersion: String by rootProject

dependencies {
    testImplementation("junit:junit:4.12")
    implementation("io.kubernetes:client-java:8.0.2")
    implementation("commons-codec:commons-codec:1.14")
    implementation("commons-io:commons-io:2.6")
    implementation("org.apache.commons:commons-lang3:3.10")
    implementation("org.json:json:20200518")

    val jettyVersion = "9.4.30.v20200611"
    implementation("org.eclipse.jetty:jetty-server:$jettyVersion")
    implementation("org.eclipse.jetty:jetty-proxy:$jettyVersion")
    implementation("org.eclipse.jetty:jetty-servlet:$jettyVersion")
    implementation("org.eclipse.jetty.websocket:websocket-servlet:$jettyVersion")
    implementation("org.eclipse.jetty.websocket:websocket-client:$jettyVersion")
    implementation("org.eclipse.jetty.websocket:websocket-server:$jettyVersion")
    implementation("org.eclipse.jgit:org.eclipse.jgit:6.1.0.202203080745-r")
    implementation("org.kohsuke:github-api:1.115")

    implementation("org.modelix:model-client:$modelixCoreVersion")
    implementation(project(":workspaces"))
    implementation("org.modelix:authorization:$modelixCoreVersion")
    implementation("com.auth0:java-jwt:3.19.2")

    implementation("io.ktor:ktor-server-core:$ktorVersion")
    implementation("io.ktor:ktor-server-netty:$ktorVersion")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-jdk8:$kotlinCoroutinesVersion")
    implementation("io.ktor:ktor-server-cors:$ktorVersion")
    implementation("io.ktor:ktor-server-html-builder:$ktorVersion")
    implementation("io.github.microutils:kotlin-logging:$kotlinLoggingVersion")

    runtimeOnly("org.slf4j:slf4j-simple:2.0.6")
}

tasks.named("assemble") {
    dependsOn("shadowJar")
}