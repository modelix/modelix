
repositories {
    mavenCentral()
    maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    mavenLocal()
}

plugins {
    val versionFile = File("../modelix.version")
    if (!versionFile.exists()) {
        throw GradleException("$versionFile doesn't exist")
    }
    val modelixVersion = versionFile.readText().trim()
    id("org.modelix.gradle-plugin") version "$modelixVersion"
}

val artifactsDir = project.file("artifacts")
val mpsDir = if (project.hasProperty("mpsPath"))
    file(project.property("mpsPath"))
    else File(artifactsDir, "mps")
val mpsExtensionsDir = File("./artifacts/de.itemis.mps.extensions")
val mbeddrDir = File("./artifacts/com.mbeddr.platform")
val modelixDir = File("./modelix/plugins")
val iets3Dir = File("./artifacts/org.iets3.opensource")

val pluginsDirFromExtensions = listOf(
        "de.60.mps.libs", 
        "de.q60.shadowmodels", 
        "de.q60.shadowmodels.examples", 
        "org.modelix.model.api", 
        "mps-apache-commons")

val mpsProjectDir = file("$projectDir/downloadedProject")
mpsProjectDir.mkdirs()

modelixModel {
    serverUrl = "http://localhost/model/"
    repositoryId = "default"
    timeout = 180
    setProjectPath(mpsProjectDir.path)

//    // MPS Extensions
//    addLibraryDir(new File("${mpsExtensionsDir.getAbsolutePath()}/mps-apache-commons"))
//    addLibraryDir(new File("${mpsExtensionsDir.getAbsolutePath()}/de.60.mps.libs"))
//    addLibraryDir(new File("${mpsExtensionsDir.getAbsolutePath()}/de.q60.shadowmodels"))
//    addLibraryDir(new File("${mpsExtensionsDir.getAbsolutePath()}/org.modelix.model.api"))
//    addPlugin("${mpsExtensionsDir.getAbsolutePath()}/mps-apache-commons", "org.apache.commons")
//    addPlugin("${mpsExtensionsDir.getAbsolutePath()}/de.60.mps.libs", "de.q60.mps.libs")
//    addPlugin("${mpsExtensionsDir.getAbsolutePath()}/de.q60.shadowmodels", "de.q60.shadowmodels")
//    addPlugin("${mpsExtensionsDir.getAbsolutePath()}/org.modelix.model.api", "org.modelix.model.api")
//
//    // Mbeddr platform
//    addPluginDir(mbeddrDir, ["org.modelix.model.api"])
//
//    // Iets3
//    addPluginDir(iets3Dir)
//
//    // Modelix
//    addLibraryDir(new File(modelixDir, "org.modelix.common"))
//    addLibraryDir(new File(modelixDir, "org.modelix.model"))
//    addPluginDir(new File(modelixDir, "org.modelix.common"))
//    addPluginDir(new File(modelixDir, "org.modelix.model"))

    // Add languages specific for the project
}
