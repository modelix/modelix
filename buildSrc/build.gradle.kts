

plugins {
    kotlin("jvm") version "1.6.21"
}

repositories {
    mavenLocal()
    mavenCentral()
    maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
}

dependencies {
    val modelApiVersion = "1.0.2-5-g1b258b7.dirty-SNAPSHOT"
    implementation("org.modelix:metamodel-generator:$modelApiVersion")
}
