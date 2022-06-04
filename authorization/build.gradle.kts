description = "Library that checks is allowed to do something"

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
}

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    implementation("com.charleskorn.kaml:kaml:0.40.0")
    implementation("io.ktor:ktor-server-auth:2.0.2")
    implementation(project(":model-client", configuration = "jvmRuntimeElements"))
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}