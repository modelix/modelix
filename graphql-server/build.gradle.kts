description = "An Example GraphQL service served by Ktor"

val ktorVersion: String by rootProject
val kotlinCoroutinesVersion: String by rootProject
val kotlinVersion: String by rootProject
val logbackVersion: String by rootProject
val graphqlKotlinVersion = "5.2.0"

plugins {
    kotlin("jvm")
    id("application")
    id("com.expediagroup.graphql") version "5.2.0"
}

application {
    mainClass.set("io.ktor.server.netty.EngineMain")
}

dependencies {
    implementation("com.expediagroup", "graphql-kotlin-server", graphqlKotlinVersion)
    implementation("io.ktor", "ktor-server-core", ktorVersion)
    implementation("io.ktor", "ktor-server-netty", ktorVersion)
    implementation("io.ktor:ktor-server-cors:$ktorVersion")
    implementation("ch.qos.logback", "logback-classic", logbackVersion)
    implementation("org.jetbrains.kotlinx", "kotlinx-coroutines-jdk8", kotlinCoroutinesVersion)
    implementation(project(":model-client", configuration = "jvmRuntimeElements"))
}

graphql {
    schema {
        packages = listOf("com.expediagroup.graphql.examples.server.ktor")
    }
}
