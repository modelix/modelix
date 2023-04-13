import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar

description = "Allows multiple clients to work on the same set of modules from different sources"
val ktorVersion: String by rootProject
val kotlinCoroutinesVersion: String by rootProject
val kotlinVersion: String by rootProject
val logbackVersion: String by rootProject
val modelixCoreVersion: String by rootProject

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
    id("application")
    id("com.github.johnrengelman.shadow") version "7.1.2"
}

application {
    mainClass.set("io.ktor.server.netty.EngineMain")
}

tasks.withType<ShadowJar> {
    archiveVersion.set("latest")
}

dependencies {
    implementation(libs.bundles.kotlin.ktor.server)
    implementation(libs.logback)
    implementation(libs.kotlin.logging)
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation("org.jetbrains.kotlinx", "kotlinx-coroutines-jdk8", kotlinCoroutinesVersion)

    implementation("io.kubernetes:client-java:18.0.0")
    implementation("org.eclipse.jgit:org.eclipse.jgit:6.2.0.202206071550-r")
    implementation("org.apache.maven.shared:maven-invoker:3.1.0")
    implementation("org.zeroturnaround:zt-zip:1.14")
    implementation("org.apache.commons:commons-text:1.10.0")
    implementation("org.jasypt:jasypt:1.9.3")
    implementation("org.modelix:model-client:$modelixCoreVersion")
    implementation(project(":workspaces"))
    implementation(project(":gitui"))
    implementation("org.modelix:authorization:$modelixCoreVersion")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:5.6.0")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}

tasks.named("assemble") {
    dependsOn("installDist")
}
