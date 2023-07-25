
val ktorVersion: String by rootProject
val kotlinCoroutinesVersion: String by rootProject
val kotlinVersion: String by rootProject
val logbackVersion: String by rootProject
val kotlinLoggingVersion: String by rootProject

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
    id("application")
}

application {
    mainClass.set("org.modelix.workspace.job.MainKt")
//    applicationDefaultJvmArgs = listOf("")
}

dependencies {
    implementation(libs.bundles.kotlin.ktor.client)
    implementation("io.ktor", "ktor-client-core", ktorVersion)
    implementation("io.ktor", "ktor-client-cio", ktorVersion)
    implementation("io.ktor:ktor-client-auth:$ktorVersion")
    implementation("io.ktor:ktor-client-content-negotiation:$ktorVersion")
    implementation("io.ktor:ktor-serialization-kotlinx-json:$ktorVersion")

    implementation(libs.logback)
    implementation(libs.kotlin.logging)
    implementation("org.jetbrains.kotlinx", "kotlinx-coroutines-jdk8", kotlinCoroutinesVersion)

    implementation("org.eclipse.jgit:org.eclipse.jgit:6.1.0.202203080745-r")
    implementation("org.apache.maven.shared:maven-invoker:3.2.0")
    implementation("org.zeroturnaround:zt-zip:1.14")

    implementation(project(":workspaces"))
    implementation("org.modelix.mps:build-tools-lib:1.1.0")

    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:5.6.0")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}

tasks.named("assemble") {
    dependsOn("installDist")
}