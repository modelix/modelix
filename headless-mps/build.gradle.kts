
description = "Run MPS headless"

plugins {
    kotlin("jvm")
    kotlin("plugin.serialization")
    id("application")
    id("maven-publish")
}

application {
    mainClass.set("org.modelix.headlessmps.ModelImportMain")
    mainClassName = "org.modelix.headlessmps.ModelImportMain"
}

dependencies {
    compileOnly(fileTree("../artifacts/mps/lib") {
        include("*.jar")
    })
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}

val copyDependencies = task("copyDependencies", Copy::class) {
    from(configurations.default)
    into(File(File("build"), "libs"))
}

tasks.getByName("jar") {
    dependsOn(copyDependencies)
}

tasks.getByName("classes") {
    dependsOn(":resolveMps")
}

publishing {
    repositories {
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/modelix/modelix")
            credentials {
                username = System.getenv("GITHUB_ACTOR")
                password = System.getenv("GITHUB_TOKEN")
            }
        }
    }
    publications {
        create<MavenPublication>("maven") {
            groupId = "org.modelix"
            artifactId = "headless-mps"
            version = "" + rootProject.ext.get("modelixVersion")

            from(components["java"])
        }
    }
}