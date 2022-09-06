import java.util.Properties

val properties: Properties = file("${rootDir.parentFile}/gradle.properties")
    .inputStream().use { stream -> Properties().also { it.load(stream) } }

plugins {
    val kotlinVersion = "1.6.21"
    kotlin("jvm") version kotlinVersion
}

repositories {
    mavenLocal()
    mavenCentral()
    maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
}

dependencies {
    val modelixCoreVersion: String by properties
    implementation("org.modelix:metamodel-generator:$modelixCoreVersion")
}
