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
import org.gradle.api.internal.project.DefaultAntBuilder
import org.gradle.api.internal.project.ant.AntLoggingAdapter
import org.gradle.api.publish.PublishingExtension
import org.gradle.api.publish.maven.MavenPublication
import org.modelix.buildtools.*
import org.w3c.dom.Element
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.IOException
import java.net.URL
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.util.ArrayList
import java.util.Enumeration
import java.util.HashSet
import java.util.jar.Manifest
import java.util.stream.Collectors
import kotlin.RuntimeException

const val MODULE_NAME_PROPERTY = "mps.module.name"
const val IDEA_PLUGIN_ID_PROPERTY = "idea.plugin.id"
const val IS_LIBS_PROPERTY = "mps.module.libs"

class MPSBuildPlugin : Plugin<Project> {
    override fun apply(project_: Project) {
        val settings = project_.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        settings.setProject(project_)

        project_.afterEvaluate { project: Project ->
            settings.validate()
            val buildDir = project.buildDir.resolve("mpsbuild")

            val dependenciesDir = buildDir.resolve("dependencies")
            val copiedDependencies = copyDependencies(settings.moduleDependenciesConfig, dependenciesDir.normalize())
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
            val mpsConfig: Configuration?
            val pluginsConfig: Configuration?
            if (settings.usingExistingMps()) {
                mpsConfig = null
                pluginsConfig = null
                // We are using an existing MPS. We also expect the user to add the version of MPS Extensions and
                // Modelix that they intend to use
            } else {
                // We are not using an existing MPS, therefore we will add one and we will add dependencies
                // to MPS Extensions and Modelix as well
                val mpsVersion = manifest.mainAttributes.getValue("MPS-Version")
                mpsConfig = project.configurations.detachedConfiguration(
                    project.dependencies.create("com.jetbrains:mps:$mpsVersion")
                )
                pluginsConfig = project.configurations.detachedConfiguration(
                    project.dependencies.create("org.modelix:mps-model-plugin:$modelixVersion"))
            }

            val generateStubsTask = project.task("generateStubs") { task ->
                val action = Action { task: Task? ->
                    val artifacts = settings.stubsDependenciesConfig.resolvedConfiguration.resolvedArtifacts
                        .filter { it.file.extension == "jar" }
                    for (artifact in artifacts) {
                        val jar = artifact.file
                        val solutionName = "stubs#" + artifact.moduleVersion.id.toString().replace(":", "#")
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
                                    newChild("modelRoot") {
                                        setAttribute("type", "java_classes")
                                        setAttribute("contentPath", jar.parentFile.absolutePath)
                                        newChild("sourceRoot") {
                                            setAttribute("location", jar.name)
                                        }
                                    }
                                }
                                newChild("dependencies") {
                                    newChild("dependency", "6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)")
                                }
                                newChild("stubModelEntries") {
                                    newChild("stubModelEntry") {
                                        setAttribute("path", jar.absolutePath)
                                    }
                                }
                            }
                        }
                        val solutionFile = buildDir.resolve("stubs").resolve(solutionName).resolve("$solutionName.msd")
                        solutionFile.parentFile.mkdirs()
                        solutionFile.writeText(xmlToString(xml))
                    }
                }
                task.actions = listOf(action)
            }

            val antScriptFile = File(buildDir, "build-modules.xml")
            val antScriptTask = project.task("generatorAntScript") { task ->
                val action = Action { task: Task? ->
                    generateAntScript(settings, project, buildDir, antScriptFile, setOf(dependenciesDir))
                }
                task.actions = listOf(action)
                task.dependsOn(generateStubsTask)
            }

            val generator = generateAntScript(settings, project, buildDir, antScriptFile, setOf(dependenciesDir))
            val ant = DefaultAntBuilder(project, AntLoggingAdapter())
            ant.importBuild(antScriptFile) { "mpsbuild-$it" }

            project.configurations.create("mpsmodules")

            val publishing = project.extensions.findByType(PublishingExtension::class.java)
            val publicationsVersion = ("" + project.version).ifEmpty { "0.1" }
            publishing?.apply {
                publications {
                    val ownPublications = generator.publications.map { it.name }.toSet()
                    for (publicationData in generator.publications) {
                        when (publicationData) {
                            is BuildScriptGenerator.ModulePublication -> {
                                it.create("mpsmodule-${publicationData.name}", MavenPublication::class.java) {
                                    it.apply {
                                        groupId = project.group.toString()
                                        artifactId = publicationData.name
                                        version = publicationsVersion
                                        pom {
                                            it.withXml {
                                                it.asElement().newChild("dependencies") {
                                                    for (jar in publicationData.files) {
                                                        newChild("dependency") {
                                                            newChild("groupId", groupId)
                                                            newChild("artifactId", "mpsmodule-${publicationData.name}")
                                                            newChild("version", version)
                                                            newChild("classifier", jar.classifier)
                                                        }
                                                    }
                                                    for (jar in publicationData.libs) {
                                                        newChild("dependency") {
                                                            newChild("groupId", groupId)
                                                            newChild("artifactId", "mpsmodule-${publicationData.name}-lib")
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
                                        artifactId = "mpsmodule-${publicationData.name}"
                                        version = publicationsVersion
                                        for (jar in publicationData.files) {
                                            val artifact = project.artifacts.add("mpsmodules", jar.file) {
                                                it.type = "jar"
                                                it.classifier = jar.classifier
                                                it.builtBy("mpsbuild-assemble")
                                            }
                                            artifact(artifact)
                                        }
                                        pom {
                                            it.properties.put(MODULE_NAME_PROPERTY, publicationData.name)
                                            it.withXml {
                                                it.asElement().newChild("dependencies") {
                                                    for (dependency in publicationData.dependencies) {
                                                        val pom = moduleName2pom[dependency.name]
                                                        if (pom != null) {
                                                            newChild("dependency") {
                                                                newChild("artifactId", pom.artifactId)
                                                                newChild("groupId", pom.group)
                                                                newChild("version", pom.version)
                                                            }
                                                        } else if (ownPublications.contains(dependency.name)) {
                                                            newChild("dependency") {
                                                                newChild("artifactId", dependency.name)
                                                                newChild("groupId", project.group.toString())
                                                                newChild("version", version)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (publicationData.libs.isNotEmpty()) {
                                    it.create("mpsmodule-libs-${publicationData.name}", MavenPublication::class.java) {
                                        it.apply {
                                            groupId = project.group.toString()
                                            artifactId = "mpsmodule-${publicationData.name}-lib"
                                            version = publicationsVersion
                                            pom {
                                                it.properties.put(MODULE_NAME_PROPERTY, publicationData.name)
                                                it.properties.put(IS_LIBS_PROPERTY, "true")
                                            }
                                            for (jar in publicationData.libs) {
                                                val artifact = project.artifacts.add("mpsmodules", jar) {
                                                    it.type = "jar"
                                                    it.classifier = jar.nameWithoutExtension
                                                    it.builtBy("mpsbuild-assemble")
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
                                        artifactId = publicationData.name
                                        version = publicationsVersion
                                        for (file in publicationData.files) {
                                            val artifact = project.artifacts.add("mpsmodules", file.file) {
                                                it.type = "zip"
                                                it.classifier = file.classifier
                                                it.builtBy("mpsbuild-assemble")
                                            }
                                            artifact(artifact)
                                        }
                                        pom {
                                            it.properties.put(IDEA_PLUGIN_ID_PROPERTY, publicationData.pluginId)
                                            it.withXml {
                                                it.asElement().newChild("dependencies") {
                                                    for (dependency in publicationData.dependencies) {
                                                        val pom = artifactId2pom[dependency.name]
                                                        if (pom != null) {
                                                            newChild("dependency") {
                                                                newChild("artifactId", pom.artifactId)
                                                                newChild("groupId", pom.group)
                                                                newChild("version", pom.version)
                                                            }
                                                        } else if (ownPublications.contains(dependency.name)) {
                                                            newChild("dependency") {
                                                                newChild("artifactId", dependency.name)
                                                                newChild("groupId", project.group.toString())
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
                    it.create("all", MavenPublication::class.java) {
                        it.apply {
                            groupId = project.group.toString()
                            artifactId = "all"
                            version = publicationsVersion
                            pom {
                                it.withXml {
                                    it.asElement().newChild("dependencies") {
                                        for (publicationData in generator.publications) {
                                            newChild("dependency") {
                                                newChild("groupId", groupId)
                                                newChild("artifactId", publicationData.name)
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

    private fun generateAntScript(settings: MPSBuildSettings, project: Project, buildDir: File, antScriptFile: File, dependencyFiles: Set<File>): BuildScriptGenerator {
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
        val xml = generator.generateXML()
        try {
            FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
        return generator
    }

    private fun copyDependencies(dependenciesConfiguration: Configuration, targetFolder: File): List<Pom> {
        val files = dependenciesConfiguration.resolve()
        return files.mapNotNull { copyDependency(it, targetFolder) }
    }

    private fun copyDependency(file: File, targetFolder: File): Pom? {
        val targetFileAndPom = readPOM(file)?.let { pom ->
            val moduleName = pom.getProperty(MODULE_NAME_PROPERTY)
            val ideaPluginId = pom.getProperty(IDEA_PLUGIN_ID_PROPERTY)
            if (moduleName != null) {
                val isLibs = pom.getProperty(IS_LIBS_PROPERTY).toBoolean()
                val classifier = pom.getClassifier(file)
                if (isLibs) {
                    targetFolder.resolve(pom.group).resolve("$moduleName-lib").resolve("$classifier.${file.extension}")
                } else {
                    val classifierSuffix = if (classifier.isEmpty()) "" else "-$classifier"
                    targetFolder.resolve(pom.group).resolve("$moduleName$classifierSuffix.${file.extension}")
                } to pom
            } else if (ideaPluginId != null) {
                targetFolder.resolve(pom.group).resolve("plugins").resolve(ideaPluginId) to pom
            } else null
        } ?: (targetFolder.resolve(file.name) to null)

        if (file.extension == "zip") {
            if (targetFileAndPom.first.exists()) targetFileAndPom.first.deleteRecursively()
            ZipUtil.unpack(file, targetFileAndPom.first)
        } else {
            file.copyTo(targetFileAndPom.first, true)
        }
        return targetFileAndPom.second
    }

    private val cachedPomContent: MutableMap<File, Pom?> = HashMap()
    private fun readPOM(jar: File): Pom? {
        val pomFile = (jar.parentFile.listFiles() ?: arrayOf()).find { it.extension == "pom" } ?: return null
        return cachedPomContent.computeIfAbsent(pomFile) {
            try {
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