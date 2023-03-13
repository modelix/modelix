
plugins {
    id("com.github.node-gradle.node") version "2.2.4"
}

apply(plugin = "base")

node {
    if (!rootProject.hasProperty("useInstalledNvm") || !rootProject.properties["useInstalledNvm"].toString().toBoolean()) {
        // also change the .nvmrc file
        version = "17.4.0"
        npmVersion = "8.3.1"
        download = true
    }
}

tasks.named<com.moowork.gradle.node.npm.NpmTask>("npm_run_build") {
    // make sure the build task is executed only when appropriate files change
    //inputs.files fileTree('public')
    inputs.files(fileTree("src"))

    // 'node_modules' appeared not reliable for dependency change detection (the task was rerun without changes)
    // though 'package.json' and 'package-lock.json' should be enough anyway
    inputs.file("package.json")
    inputs.file("package-lock.json")

    outputs.dir("dist")
}

// pack output of the build into JAR file
val packageNpmApp by tasks.registering(Zip::class) {
    dependsOn("npm_run_build")
    archiveFileName.set("ui-client.jar")
    destinationDirectory.set(file("${projectDir}/../mps/org.modelix.ui.server/lib/"))
    from("dist") {
        // optional path under which output will be visible in Java classpath, e.g. static resources path
        into("org/modelix/ui/client/static")
    }
}

tasks.named("clean") {
    delete(packageNpmApp.get().archiveFile)
    delete(tasks.getByName("npm_run_build").outputs)
}

// declare a dedicated scope for publishing the packaged JAR
val npmResources: Configuration by configurations.creating

configurations.getByName("default").extendsFrom(npmResources)

// expose the artifact created by the packaging task
artifacts {
    add(npmResources.name, packageNpmApp.get().archiveFile) {
        builtBy(packageNpmApp)
        type = "jar"
    }
}

tasks.named("assemble") {
    dependsOn(packageNpmApp)
}

/*
String testsExecutedMarkerName = "${projectDir}/.tests.executed"

task test(type: NpmTask) {
    dependsOn assemble

    // force Jest test runner to execute tests once and finish the process instead of starting watch mode
    environment CI: 'true'

    args = ['run', 'test']

    inputs.files fileTree('src')
    inputs.file 'package.json'
    inputs.file 'package-lock.json'

    // allows easy triggering re-tests
    doLast {
        new File(testsExecutedMarkerName).text = 'delete this file to force re-execution JavaScript tests'
    }
    outputs.file testsExecutedMarkerName
}

check.dependsOn test

clean {
    delete testsExecutedMarkerName
}
*/