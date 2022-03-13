/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.gradle.mpsbuild

import org.apache.commons.io.FileUtils
import org.gradle.api.*
import org.gradle.api.artifacts.Configuration
import org.gradle.api.artifacts.ResolvedConfiguration
import org.gradle.api.artifacts.ResolvedDependency
import org.gradle.api.publish.PublishingExtension
import org.gradle.api.publish.maven.MavenPublication
import org.gradle.api.tasks.Exec
import org.modelix.buildtools.*
import org.w3c.dom.Element
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.net.URL
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.text.SimpleDateFormat
import java.util.*
import java.util.jar.Manifest
import java.util.stream.Collectors
import kotlin.RuntimeException
import kotlin.collections.HashMap
import kotlin.collections.HashSet

const val MODULE_NAME_PROPERTY = "mps.module.name"
const val IDEA_PLUGIN_ID_PROPERTY = "idea.plugin.id"
const val IS_LIBS_PROPERTY = "mps.module.libs"

class MPSBuildPlugin : Plugin<Project> {
    override fun apply(project_: Project) {
        val settings = project_.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        settings.setProject(project_)

        project_.afterEvaluate { project: Project ->
            settings.validate()
            val buildDir = project.buildDir.resolve("mpsbuild").normalize()
            val dependenciesDir = buildDir.resolve("dependencies")

            val mpsDir = downloadMps(settings, buildDir.resolve("mps"))

            val dirsToMine = setOfNotNull(dependenciesDir, mpsDir)
            val copiedDependencies = copyDependencies(settings.dependenciesConfig, dependenciesDir.normalize())
            val moduleName2pom: Map<String, Pom> = copiedDependencies.map { it.getProperty(MODULE_NAME_PROPERTY) to it }
                .filter { it.first != null }.associate { it.first!! to it.second }
            val pluginId2pom: Map<String, Pom> = copiedDependencies.map { it.getProperty(IDEA_PLUGIN_ID_PROPERTY) to it }
                .filter { it.first != null }.associate { it.first!! to it.second }
            val artifactId2pom: Map<String, Pom> = copiedDependencies.associateBy { it.artifactId }

            val manifest = readManifest()
            val modelixVersion = manifest.mainAttributes.getValue("modelix-Version")
            val genConfig = project.configurations.detachedConfiguration(
                project.dependencies.create("org.modelix:mps-build-tools:$modelixVersion")
            )

            val generator = createBuildScriptGenerator(settings, project, buildDir, dirsToMine)
            val antScriptFile = File(buildDir, "build-modules.xml")
            val antScriptTask = project.task("generatorAntScript") { task ->
                val action = Action { task: Task? ->
                    generateAntScript(generator, antScriptFile)
                }
                task.actions = listOf(action)
            }
//            val assembleMpsTask = project.task("assembleMps") { task ->
//                val action = Action { task: Task? ->
//                    val ant = DefaultAntBuilder(project, AntLoggingAdapter())
//                    ant.importBuild(antScriptFile) { "mpsbuild-$it" }
//
//                    project.tasks.getByPath("mpsbuild-assemble").
//                }
//                task.actions = listOf(action)
//                task.dependsOn(antScriptTask)
//            }
            val assembleMpsTask = project.tasks.create("assembleMps", Exec::class.java) {
                it.workingDir = antScriptFile.parentFile
                it.commandLine = listOf("ant", "-f", antScriptFile.absolutePath, "assemble")
                it.standardOutput = System.out
                it.errorOutput = System.err
                it.standardInput = System.`in`
                it.dependsOn(antScriptTask)
            }

            project.configurations.create("mpsmodules")

            val publications = generator.getPublications()
            val publishing = project.extensions.findByType(PublishingExtension::class.java)
            val publicationsVersion = if (project.version == Project.DEFAULT_VERSION) {
                null
            } else {
                ("" + project.version).ifEmpty { null }
            } ?: generateVersionNumber(generator.modulesMiner.getModules().mpsHome)
            publishing?.apply {
                publications {
                    val ownPublications = publications.map { it.name }.toSet()
                    for (publicationData in publications) {
                        if (publicationData.name.startsWith("stubs#")) continue
                        when (publicationData) {
                            is BuildScriptGenerator.ModulePublication -> {
                                it.create("mpsmodule-${publicationData.name}", MavenPublication::class.java) {
                                    it.apply {
                                        groupId = project.group.toString()
                                        artifactId = publicationData.name.toValidPublicationName()
                                        version = publicationsVersion
                                        pom {
                                            it.withXml {
                                                it.asElement().newChild("dependencies") {
                                                    for (classifier in publicationData.files.map { it.classifier }) {
                                                        newChild("dependency") {
                                                            newChild("groupId", groupId)
                                                            newChild("artifactId", "mpsmodule-${publicationData.name}".toValidPublicationName())
                                                            newChild("version", version)
                                                            newChild("classifier", classifier)
                                                        }
                                                    }
                                                    newChild("dependency") {
                                                        newChild("groupId", groupId)
                                                        newChild("artifactId", "mpsmodule-${publicationData.name}".toValidPublicationName())
                                                        newChild("version", version)
                                                        newChild("type", "pom")
                                                    }
                                                    if (publicationData.libs.isNotEmpty()) {
                                                        newChild("dependency") {
                                                            newChild("groupId", groupId)
                                                            newChild("artifactId", "mpsmodule-${publicationData.name}-lib".toValidPublicationName())
                                                            newChild("version", version)
                                                            newChild("type", "pom")
                                                        }
                                                    }
                                                    for (jar in publicationData.libs) {
                                                        newChild("dependency") {
                                                            newChild("groupId", groupId)
                                                            newChild("artifactId", "mpsmodule-${publicationData.name}-lib".toValidPublicationName())
                                                            newChild("version", version)
                                                            newChild("classifier", jar.nameWithoutExtension)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                it.create("mpsmodule-jars-${publicationData.name}", MavenPublication::class.java) {
                                    it.apply {
                                        groupId = project.group.toString()
                                        artifactId = "mpsmodule-${publicationData.name}".toValidPublicationName()
                                        version = publicationsVersion
                                        for (jar in publicationData.files) {
                                            val artifact = project.artifacts.add("mpsmodules", jar.file) {
                                                it.type = "jar"
                                                it.classifier = jar.classifier
                                                it.builtBy(assembleMpsTask)
                                            }
                                            artifact(artifact)
                                        }
                                        pom {
                                            it.properties.put(MODULE_NAME_PROPERTY, publicationData.name)
                                            it.withXml {
                                                it.asElement().publicationDependenciesToXml(publicationData, moduleName2pom, ownPublications, project, this, settings)
                                            }
                                        }
                                    }
                                }
                                if (publicationData.libs.isNotEmpty()) {
                                    it.create("mpsmodule-libs-${publicationData.name}", MavenPublication::class.java) {
                                        it.apply {
                                            groupId = project.group.toString()
                                            artifactId = "mpsmodule-${publicationData.name}-lib".toValidPublicationName()
                                            version = publicationsVersion
                                            pom {
                                                it.properties.put(MODULE_NAME_PROPERTY, publicationData.name)
                                                it.properties.put(IS_LIBS_PROPERTY, "true")
                                            }
                                            for (jar in publicationData.libs) {
                                                val artifact = project.artifacts.add("mpsmodules", jar) {
                                                    it.type = "jar"
                                                    it.classifier = jar.nameWithoutExtension
                                                    it.builtBy(assembleMpsTask)
                                                }
                                                artifact(artifact)
                                            }
                                        }
                                    }
                                }
                            }
                            is BuildScriptGenerator.IdeaPluginPublication -> {
                                it.create(publicationData.name, MavenPublication::class.java) {
                                    it.apply {
                                        groupId = project.group.toString()
                                        artifactId = publicationData.name.toValidPublicationName()
                                        version = publicationsVersion
                                        for (file in publicationData.files) {
                                            val artifact = project.artifacts.add("mpsmodules", file.file) {
                                                it.type = "zip"
                                                it.classifier = file.classifier
                                                it.builtBy(assembleMpsTask)
                                            }
                                            artifact(artifact)
                                        }
                                        pom {
                                            it.properties.put(IDEA_PLUGIN_ID_PROPERTY, publicationData.pluginId)
                                            it.withXml {
                                                it.asElement().publicationDependenciesToXml(publicationData, moduleName2pom, ownPublications, project, this, settings)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    it.create("all", MavenPublication::class.java) {
                        it.apply {
                            groupId = project.group.toString()
                            artifactId = "all"
                            version = publicationsVersion
                            pom {
                                it.withXml {
                                    it.asElement().newChild("dependencies") {
                                        for (publicationData in publications) {
                                            if (publicationData.name.startsWith("stubs#")) continue
                                            newChild("dependency") {
                                                newChild("groupId", groupId)
                                                newChild("artifactId", publicationData.name.toValidPublicationName())
                                                newChild("version", version)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

    }

    private fun downloadMps(settings: MPSBuildSettings, targetDir: File): File? {
        var mpsDir: File? = null
        settings.mpsDependenciesConfig?.resolvedConfiguration?.lenientConfiguration?.let {
            for (file in it.files) {
                val targetFile = targetDir.resolve(file.name)
                if (!targetFile.exists()) {
                    copyAndUnzip(file, targetFile)
                }
                mpsDir = targetFile
            }
        }

        if (mpsDir == null) {
            val url = settings.getMpsDownloadUrl()
            if (url != null) {
                val file = targetDir.resolve(url.toString().substringAfterLast("/"))
                if (!file.exists()) {
                    println("Downloading $url")
                    file.parentFile.mkdirs()
                    url.openStream().use { istream ->
                        file.outputStream().use { ostream ->
                            istream.copyTo(ostream)
                        }
                    }
                }
                if (file.isFile) {
                    ZipUtil.explode(file)
                }
                mpsDir = file
            }
        }

        return mpsDir
    }

    private fun generateVersionNumber(mpsHome: File?): String {
        val mpsVersion = mpsHome?.let { readMPSVersion(it) }
        val timestamp = SimpleDateFormat("yyyyMMddHHmm").format(Date())
        return if (mpsVersion == null) timestamp else "$mpsVersion-$timestamp"
    }

    private fun readMPSVersion(mpsHome: File): String? {
        val buildPropertiesFiles = mpsHome.resolve("build.properties")
        if (!buildPropertiesFiles.exists()) return null
        val buildProperties = Properties()
        buildPropertiesFiles.inputStream().use { buildProperties.load(it) }

        return listOf(
            buildProperties["mpsBootstrapCore.version.major"],
            buildProperties["mpsBootstrapCore.version.minor"],
            buildProperties["mpsBootstrapCore.version.bugfixNr"],
            buildProperties["mpsBootstrapCore.version.eap"],
        ).filterNotNull()
            .map { it.toString().trim('.') }
            .filter { it.isNotEmpty() }
            .joinToString(".")

//        mpsBootstrapCore.version.major=2020
//        mpsBootstrapCore.version.minor=3
//        mpsBootstrapCore.version.bugfixNr=.6
//        mpsBootstrapCore.version.eap=
//        mpsBootstrapCore.version=2020.3
    }

    private fun generateStubsSolution(dependency: ResolvedDependency, stubsDir: File) {
        val solutionName = getStubSolutionName(dependency)
        val jars = dependency.moduleArtifacts.map { it.file }.filter { it.extension == "jar" }
        val xml = newXmlDocument {
            newChild("solution") {
                setAttribute("name", solutionName)
                setAttribute("pluginKind", "PLUGIN_OTHER")
                setAttribute("moduleVersion", "0")
                setAttribute("uuid", "~$solutionName")
                newChild("facets") {
                    newChild("facet") {
                        setAttribute("type", "java")
                    }
                }
                newChild("models") {
                    for (jar in jars) {
                        newChild("modelRoot") {
                            setAttribute("type", "java_classes")
                            setAttribute("contentPath", jar.parentFile.absolutePath)
                            newChild("sourceRoot") {
                                setAttribute("location", jar.name)
                            }
                        }
                    }
                }
                newChild("dependencies") {
                    newChild("dependency", "6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)") {
                        setAttribute("reexport", "true")
                    }
                    for (transitiveDep in dependency.children) {
                        val n = getStubSolutionName(transitiveDep)
                        newChild("dependency", "~$n($n)") {
                            setAttribute("reexport", "true")
                        }
                    }
                }
                newChild("stubModelEntries") {
                    for (jar in jars) {
                        newChild("stubModelEntry") {
                            setAttribute("path", jar.absolutePath)
                        }
                    }
                }
            }
        }
        val solutionFile = stubsDir.resolve(solutionName).resolve("$solutionName.msd")
        solutionFile.parentFile.mkdirs()
        solutionFile.writeText(xmlToString(xml))
    }

    private fun Element.publicationDependenciesToXml(publicationData: BuildScriptGenerator.Publication,
                                                     moduleName2pom: Map<String, Pom>,
                                                     ownPublications: Set<String>,
                                                     project: Project,
                                                     mavenPublication: MavenPublication,
                                                     settings: MPSBuildSettings) {
        newChild("dependencies") {
            for (dependency in publicationData.dependencies) {
                val coordinates = Regex("stubs#(.+)#(.+)#(.+)").matchEntire(dependency.name)
                if (coordinates != null) {
                    newChild("dependency") {
                        newChild("groupId", coordinates.groupValues[1])
                        newChild("artifactId", coordinates.groupValues[2])
                        newChild("version", coordinates.groupValues[3])
                    }
                } else {
                    val pom = moduleName2pom[dependency.name]
                    if (pom != null) {
                        newChild("dependency") {
                            newChild("artifactId", pom.artifactId)
                            newChild("groupId", pom.group)
                            newChild("version", pom.version)
                        }
                    } else if (ownPublications.contains(dependency.name)) {
                        newChild("dependency") {
                            newChild("artifactId", dependency.name.toValidPublicationName())
                            newChild("groupId", project.group.toString())
                            newChild("version", mavenPublication.version)
                        }
                    }
                }

            }
        }
    }

    private fun String.toValidPublicationName() = replace(Regex("[^A-Za-z0-9_\\-.]"), "_").toLowerCase()

    private fun getStubSolutionName(dependency: ResolvedDependency): String {
//                        val clean: (String)->String = { it.replace(Regex("[^a-zA-Z0-9]"), "_") }
//                        val group = clean(it.moduleGroup)
//                        val artifactId = clean(it.moduleName)
//                        val version = clean(it.moduleVersion)
//                        "stubs.$group.$artifactId.$version"
        return "stubs#" + dependency.module.id.toString().replace(":", "#")
    }

    private fun ResolvedConfiguration.getAllDependencies(): List<ResolvedDependency> {
        val allDependencies: MutableList<ResolvedDependency> = ArrayList()
        object : GraphWithCyclesVisitor<ResolvedDependency>() {
            override fun onVisit(element: ResolvedDependency) {
                allDependencies.add(element)
                visit(element.children)
            }
        }.visit(firstLevelModuleDependencies)
        return allDependencies
    }

    private fun generateAntScript(generator: BuildScriptGenerator, antScriptFile: File): BuildScriptGenerator {
        val xml = generator.generateXML()
        try {
            FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
        return generator
    }

    private fun createBuildScriptGenerator(settings: MPSBuildSettings,
                                           project: Project,
                                           buildDir: File,
                                           dependencyFiles: Set<File>): BuildScriptGenerator {
        val modulesMiner = ModulesMiner()
        for (modulePath in settings.resolveModulePaths(project.projectDir.toPath())) {
            modulesMiner.searchInFolder(modulePath.toFile())
        }
        for (dependencyFile in dependencyFiles) {
            modulesMiner.searchInFolder(dependencyFile)
        }
        val mpsPath = settings.mpsHome
        if (mpsPath != null) {
            val mpsHome = project.projectDir.toPath().resolve(Path.of(mpsPath)).normalize().toFile()
            if (!mpsHome.exists()) {
                throw RuntimeException("$mpsHome doesn't exist")
            }
            modulesMiner.searchInFolder(mpsHome)
        }
        val includedPaths = settings.resolveIncludedModules(project.projectDir.toPath())
        val includedModuleNames = settings.getIncludedModuleNames()
        val foundModuleNames: MutableSet<String> = HashSet()
        var modulesToGenerate: MutableList<ModuleId>? = null
        if (includedPaths != null || includedModuleNames != null) {
            modulesToGenerate = ArrayList()
            for (module in modulesMiner.getModules().getModules().values) {
                if (includedModuleNames != null && includedModuleNames.contains(module.name)) {
                    modulesToGenerate.add(module.moduleId)
                    foundModuleNames.add(module.name)
                } else if (includedPaths != null) {
                    val modulePath = module.owner.path.getLocalAbsolutePath()
                    if (includedPaths.stream().anyMatch { include: Path? -> modulePath.startsWith(include) }) {
                        modulesToGenerate.add(module.moduleId)
                    }
                }
            }
        }
        val missingModuleNames = includedModuleNames!!.stream().filter { n: String -> !foundModuleNames.contains(n) }.sorted().collect(Collectors.toList())
        if (!missingModuleNames.isEmpty()) {
            throw RuntimeException("Modules not found: $missingModuleNames")
        }
        val generator = BuildScriptGenerator(
            modulesMiner, modulesToGenerate, emptySet(), settings.getMacros(project.projectDir.toPath()), buildDir)
        generator.generatorHeapSize = settings.generatorHeapSize
        generator.ideaPlugins += settings.ideaPlugins.map { pluginSettings ->
            val moduleName = pluginSettings.getImplementationModuleName()
            val module = (modulesMiner.getModules().getModules().values.find { it.name == moduleName }
                ?: throw RuntimeException("module $moduleName not found"))
            BuildScriptGenerator.IdeaPlugin(module, "" + project.version, pluginSettings.pluginXml)
        }
        return generator
    }

    private fun copyDependencies(dependenciesConfiguration: Configuration, targetFolder: File): List<Pom> {
        val poms = ArrayList<Pom>()
        val dependencies = dependenciesConfiguration.resolvedConfiguration.getAllDependencies()
        for (dependency in dependencies) {
            val files = dependency.moduleArtifacts.map { it.file }
            val pom = files.filter { it.extension == "pom" }.map { readPOM(it) }.firstOrNull()
            if (pom != null) poms += pom
            for (file in files.filter { it.extension != "pom" }) {
                copyDependency(file, targetFolder, pom, dependency)
            }
        }
        return poms
    }

    private fun copyDependency(file: File, targetFolder: File, pom: Pom?, dependency: ResolvedDependency) {
        if (pom == null) {
            generateStubsSolution(dependency, targetFolder.resolve("stubs"))
        } else {
            val moduleName = pom.getProperty(MODULE_NAME_PROPERTY)
            val ideaPluginId = pom.getProperty(IDEA_PLUGIN_ID_PROPERTY)
            val targetFile = if (moduleName != null) {
                val isLibs = pom.getProperty(IS_LIBS_PROPERTY).toBoolean()
                val classifier = pom.getClassifier(file)
                if (isLibs) {
                    targetFolder.resolve("modules").resolve(pom.group).resolve("$moduleName-lib").resolve("$classifier.${file.extension}")
                } else {
                    val classifierSuffix = if (classifier.isEmpty()) "" else "-$classifier"
                    targetFolder.resolve("modules").resolve(pom.group).resolve("$moduleName$classifierSuffix.${file.extension}")
                }
            } else if (ideaPluginId != null) {
                targetFolder.resolve("plugins").resolve(pom.group).resolve(ideaPluginId)
            } else null
            if (targetFile != null) {
                copyAndUnzip(file, targetFile)
            } else {
                println("Ignored file $file from dependency ${dependency.module.id}")
            }
        }
    }

    private fun copyAndUnzip(sourceFile: File, targetFile: File) {
        if (sourceFile.extension == "zip") {
            if (targetFile.exists()) targetFile.deleteRecursively()
            ZipUtil.unpack(sourceFile, targetFile)
        } else {
            sourceFile.copyTo(targetFile, true)
        }
    }

    private val cachedPomContent: MutableMap<File, Pom?> = HashMap()
    private fun readPOM(pomFile: File): Pom? {
        require(pomFile.extension == "pom") { "Not a .pom file: $pomFile" }
        return cachedPomContent.computeIfAbsent(pomFile) {
            try {
                println("Loading POM from $pomFile")
                Pom(readXmlFile(it).documentElement, it)
            } catch (e : Exception) {
                println("Failed to read $pomFile")
                null
            }
        }
    }

    private fun readManifest(): Manifest {
        var resources: Enumeration<URL>? = null
        try {
            resources = javaClass.classLoader.getResources("META-INF/MANIFEST.MF")
            while (resources.hasMoreElements()) {
                try {
                    val manifest = Manifest(resources.nextElement().openStream())
                    if (manifest.mainAttributes.getValue("modelix-Version") != null) {
                        return manifest
                    }
                } catch (ex: IOException) {
                    throw RuntimeException("Failed to read MANIFEST.MF", ex)
                }
            }
        } catch (ex: IOException) {
            throw RuntimeException("Failed to read MANIFEST.MF", ex)
        }
        throw RuntimeException("No MANIFEST.MF found containing 'modelix-Version'")
    }

    class Pom(val content: Element, val file: File) {
        val group: String = content.findTag("groupId")?.textContent ?: ""
        val version: String = content.findTag("version")?.textContent ?: ""
        val artifactId: String = content.findTag("artifactId")?.textContent ?: ""
        val baseNameWithVersion: String = "$artifactId-$version"
        fun artifactName(classifier: String) = if (classifier.isEmpty()) baseNameWithVersion else "$baseNameWithVersion-$classifier"
        fun getClassifier(file: File): String {
            val prefix = "$baseNameWithVersion-"
            return if (file.nameWithoutExtension == baseNameWithVersion || !file.nameWithoutExtension.startsWith(prefix)) {
                ""
            } else {
                file.nameWithoutExtension.drop(prefix.length)
            }
        }
        fun getProperty(name: String) = content.findTag("properties")?.findTag(name)?.textContent
    }
}