description = "Library that checks is allowed to do something"

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation("org.keycloak:keycloak-authz-client:18.0.1")
    val ktorVersion = "2.0.2"
    implementation("io.ktor:ktor-server-auth:$ktorVersion")
    implementation("io.ktor:ktor-server-status-pages:$ktorVersion")
    implementation("io.ktor:ktor-server-auth:$ktorVersion")
    implementation("io.ktor:ktor-server-auth-jwt:$ktorVersion")
    implementation("io.ktor:ktor-server-sessions:$ktorVersion")
    implementation("io.ktor:ktor-server-forwarded-header:$ktorVersion")
    implementation("io.ktor", "ktor-client-cio", ktorVersion)
    implementation(project(":model-client", configuration = "jvmRuntimeElements"))
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}