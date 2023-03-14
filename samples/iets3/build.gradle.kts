import de.itemis.mps.gradle.BuildLanguages
import de.itemis.mps.gradle.RunAntScript
import de.itemis.mps.gradle.GenerateLibrariesXml
import de.itemis.mps.gradle.TestLanguages

buildscript {
    repositories {
        maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
        maven { url = uri("https://projects.itemis.de/nexus/content/repositories/OS") }
        mavenCentral()
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.2.168.+")
    }
}

plugins {
    base
}

group "org.modelix"
description = "modelix UI server with IETS3 plugins"

fun scriptFile(relativePath: String) {
    File("$rootDir/build/$relativePath")
}


fun getJDKHome() : String {
    lateinit var home: String
    if (extra.has("java11_home")) {
        home = extra["java11_home"].toString()
    } else if (System.getenv("JB_JAVA11_HOME") != null) {
        home = System.getenv("JB_JAVA11_HOME")
    } else {
        if (JavaVersion.current() != JavaVersion.VERSION_11) {
            throw GradleException("This build script requires Java 11 but you are currently using ${JavaVersion.current()}.\nWhat you can do:\n"
                + "  * Use project property java11_home to point to the Java 11 JDK.\n"
                + "  * Use environment variable JAVA11_HOME to point to the Java 11 JDK\n"
                + "  * Run Gradle using Java 11")
        }
        home =  System.getProperty("java.home")
    }
    // Check JDK location
    if (!File(home, "lib").exists()) {
        throw GradleException("Unable to locate JDK home folder. Detected folder is: $jdk_home")
    }
    return home
}

val jdk_home by extra(getJDKHome())

extra["itemis.mps.gradle.ant.defaultJavaExecutable"] = File(jdk_home, "bin/java")
logger.info("Using JDK at $jdk_home")

//define directories
val artifactsDir by extra(File(rootDir, "artifacts"))
val libsDir by extra(File(rootDir, "libs"))
val mpsDir by extra(File(artifactsDir, "mps"))

val antLib by configurations.creating
val mps by configurations.creating
val mpsArtifacts by configurations.creating
val libs by configurations.creating

val mpsVersion by extra("2020.1.1")

dependencies {
    antLib("org.apache.ant:ant-junit:1.10.1")
    mps("com.jetbrains:mps:$mpsVersion")
    mpsArtifacts("de.itemis.mps:extensions:2020.1+")
    mpsArtifacts("com.mbeddr:platform:2020.1+")
    mpsArtifacts("org.iets3:opensource:2020.1+")
    libs("de.itemis.mps.build.example:javalib:1.0+")
}

repositories {
    maven { url = uri("https://projects.itemis.de/nexus/content/groups/OS/") }
    maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
    mavenCentral()
    mavenLocal()
}

val project_home by extra("-Dproject.home=" + file(rootDir).absolutePath)
val mps_home by extra("-Dmps.home=" + mpsDir.absolutePath)
val artifacts_dir by extra("-Dartifacts.root=" + File(rootDir, "artifacts"))

// default arguments for ANT
val defaultScriptArgs by extra(listOf(mps_home, project_home, artifacts_dir))

fun getBuildScriptClassPath() : FileCollection {
    return antLib.fileCollection({ true }) + project.files("$jdk_home/lib/tools.jar")
}

val buildScriptClasspath by extra(getBuildScriptClassPath())

val generateLibrariesXml by tasks.registering(GenerateLibrariesXml::class) {
    description = "Will read project libraries from projectlibraries.properties and generate libraries.xml in .mps directory. Libraries are loaded in mps during start."
    defaults = rootProject.file("projectlibraries.properties")
    destination = file("code/.mps/libraries.xml")
    setOverrides(rootProject.file("projectlibraries.overrides.properties"))
}

val resolveLibs by tasks.registering(Copy::class) {
    doFirst {
        delete(libsDir)
    }
    from(libs.resolve())
    into(libsDir)
}

val resolveMps by tasks.registering(Copy::class) {
    from(mps.resolve().map { zipTree(it) })
    into(mpsDir)
}

val resolveMpsArtifacts by tasks.registering(Copy::class) {
    from(mpsArtifacts.resolve().map { zipTree(it) })
    into(artifactsDir)
}

val setup by tasks.registering {
    // We resolve MPS not for the users to use it but for the distribution packaging script to be able to refer to it.
    dependsOn(resolveMpsArtifacts)
    dependsOn(generateLibrariesXml)
    description = "Set up MPS project libraries. Libraries are read in from projectlibraries.properties file."
}

tasks.named("assemble") {
    dependsOn(resolveMpsArtifacts)
}
defaultTasks.add("assemble")
