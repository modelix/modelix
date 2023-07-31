
plugins {
    java
    `maven-publish`
    `java-gradle-plugin`
}

tasks.withType<JavaCompile> {
    dependsOn(":mps:resolveMps")
    sourceCompatibility = "11"
    targetCompatibility = "11"
}

repositories {
    mavenCentral()
    maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    //maven { url = uri("https://modelix.jfrog.io/artifactory/itemis/") } // caching proxy for the itemis repo
}

dependencies {
    compileOnly(fileTree("../artifacts/mps/lib") {
        include("*.jar")
    })
    implementation("com.google.code.gson:gson:2.10")
    implementation("org.apache.commons:commons-text:1.10.0")
    implementation(gradleApi())
    testImplementation("junit:junit:4.13.1")
}

val modelixVersion: String by rootProject.ext
val mpsMajorVersion: String by rootProject.ext
val mpsMinorVersion: String by rootProject.ext
val mpsVersion: String by rootProject.ext
val mpsExtensionsVersion: String by rootProject.ext

tasks.withType<Jar> {
    manifest {
        attributes(mapOf(
            "Implementation-Version" to modelixVersion,
            "modelix-Version" to modelixVersion,
            "MPS-MajorVersion" to mpsMajorVersion,
            "MPS-MinorVersion" to mpsMinorVersion,
            "MPS-Version" to mpsVersion,
            "MPS-extensions-Version" to mpsExtensionsVersion)
        )
    }
}

gradlePlugin {
    plugins {
        create("modelixGradlePlugin") {
            group = "org.modelix"
            id = "org.modelix.model-download-gradle"
            implementationClass = "org.modelix.gradle.model.ModelPlugin"
        }
    }
}

