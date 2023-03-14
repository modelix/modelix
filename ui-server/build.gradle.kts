
plugins {
    java
}

description = "modelix UI server"

defaultTasks.add("build")

repositories {
    maven { url = uri("https://repo.maven.apache.org/maven2") }
}

tasks.withType<JavaCompile> {
    dependsOn(":mps:resolveMpsArtifacts", ":mps:resolveMps")
    sourceCompatibility = "11"
    targetCompatibility = "11"
}

dependencies {
    compileOnly(fileTree("../artifacts/mps/lib") {
        include("*.jar")
    })
    implementation("org.eclipse.jgit:org.eclipse.jgit:6.1.0.202203080745-r")
    implementation("commons-io:commons-io:2.7")
}

val copyRuntimeLibs by tasks.registering(Copy::class) {
    into("$buildDir/dependencies")
    from(configurations.runtimeClasspath)
}

tasks.named("assemble") {
    finalizedBy(copyRuntimeLibs)
}