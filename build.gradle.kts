import java.text.SimpleDateFormat

fun githubCredentials(): Pair<String, String>? {
    if (project.hasProperty("modelix.github.user") && project.hasProperty("modelix.github.token")) {
        return Pair(
            project.findProperty("modelix.github.user").toString(),
            project.findProperty("modelix.github.token").toString()
        )
    } else if (project.hasProperty("gpr.user") && project.hasProperty("gpr.key")) {
        return Pair(project.findProperty("gpr.user").toString(), project.findProperty("gpr.key").toString())
    } else if (System.getenv("GITHUB_ACTOR") != null && System.getenv("GITHUB_TOKEN") != null) {
        return Pair(System.getenv("GITHUB_ACTOR"), System.getenv("GITHUB_TOKEN"))
    } else {
        logger.error("Please specify your github username (gpr.user) and access token (gpr.key) in ~/.gradle/gradle.properties")
        return null
    }
}

buildscript {
    repositories {
        /* It is useful to have the central maven repo before the Itemis's one
           as it is more reliable */
        mavenLocal()
        maven { url = uri("https://repo.maven.apache.org/maven2") }
        maven { url = uri("https://plugins.gradle.org/m2/") }
        mavenCentral()
        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.17.354.e921726")
        classpath("com.google.googlejavaformat:google-java-format:1.8+")
    }
}
plugins {
    id("com.diffplug.gradle.spotless") version "4.5.1" apply false
    kotlin("jvm") apply false
    kotlin("multiplatform") apply false
    kotlin("plugin.serialization") apply false
    `maven-publish`
}

//val githubCredentials by extra(getGithubCredentials())
val mpsVersionProps = java.util.Properties()
val inputStream = file("mps-version.properties").inputStream()
mpsVersionProps.load(inputStream)
inputStream.close()
val mpsMajorVersion: String by extra(mpsVersionProps.getProperty("mpsMajorVersion"))
val mpsMinorVersion: String by extra(mpsVersionProps.getProperty("mpsMinorVersion"))
val mpsVersion: String by extra(mpsVersionProps.getProperty("mpsVersion"))

fun mpsExtensionsVersion(): String {
    var version: String = mpsVersionProps.getProperty("mpsExtensionsVersion")
    if (version.isEmpty()) {
        version = "$mpsMajorVersion+"
    }
    return version
}

val mpsExtensionsVersion by extra(mpsExtensionsVersion())

fun getAndWriteModelixVersion(): String {
    lateinit var modelixVersion: String
    val versionFile = File("$rootDir/modelix.version")
    modelixVersion = if (versionFile.exists()) {
        versionFile.readText().trim()
    } else {
        "$mpsVersion-" + SimpleDateFormat("yyyyMMddHHmm").format(java.util.Date()) + "-SNAPSHOT"
    }
    versionFile.writeText(modelixVersion)
    return modelixVersion
}

val modelixVersion by extra(getAndWriteModelixVersion())
println("modelix version: " + modelixVersion)

subprojects {
    apply(plugin = "maven-publish")

    group = "org.modelix"
    version = modelixVersion

    repositories {
        /* It is useful to have the central maven repo before the Itemis's one
           as it is more reliable */
        mavenLocal()
        maven { url = uri("https://repo.maven.apache.org/maven2") }
        mavenCentral()
        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    }

    publishing {
        repositories {
            /* Disabled because GHP sometimes keeps failing with "Received status code 409 from server: Conflict"
            if (githubCredentials != null) {
                maven {
                    name = "GitHubPackages"
                    url = uri("https://maven.pkg.github.com/modelix/modelix")
                    if (githubCredentials != null) {
                        credentials {
                            username = githubCredentials[0]
                            password = githubCredentials[1]
                        }
                    }
                }
            }
            */
            if (rootProject.hasProperty("artifacts.itemis.cloud.user")) {
                maven {
                    name = "itemisNexus3"
                    url = if (modelixVersion.contains("SNAPSHOT")) {
                        uri("https://artifacts.itemis.cloud/repository/maven-mps-snapshots/")
                    } else {
                        uri("https://artifacts.itemis.cloud/repository/maven-mps-releases/")
                    }
                    credentials {
                        username = rootProject.findProperty("artifacts.itemis.cloud.user").toString()
                        password = rootProject.findProperty("artifacts.itemis.cloud.pw").toString()
                    }
                }
            }
        }
    }
}
description = "Cloud storage and web UI for MPS"

defaultTasks.add("assemble")
