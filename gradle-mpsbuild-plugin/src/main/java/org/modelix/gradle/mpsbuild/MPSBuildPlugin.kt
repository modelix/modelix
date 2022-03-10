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
import java.lang.RuntimeException
import org.w3c.dom.Element
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

const val MODULE_NAME_PROPERTY = "mps.module.name"
const val IS_LIBS_PROPERTY = "mps.module.libs"

class MPSBuildPlugin : Plugin<Project> {
    override fun apply(project_: Project) {
        val settings = project_.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        val dependenciesConfiguration =  project_.configurations.create("mpsBuildDependencies")
        project_.afterEvaluate { project: Project ->
            settings.validate()
            val buildDir = project.buildDir.resolve("mpsbuild")

            val dependenciesDir = buildDir.resolve("dependencies")
            copyDependencies(dependenciesConfiguration, dependenciesDir)

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

            val antScriptFile = File(buildDir, "build-modules.xml")
            val antScriptTask = project.tasks.create("generatorAntScript")
            val action = Action { task: Task? ->
                generateAntScript(settings, project, buildDir, antScriptFile, setOf(dependenciesDir))
            }
            antScriptTask.actions = listOf(action)

            val generator = generateAntScript(settings, project, buildDir, antScriptFile, setOf(dependenciesDir))
            val ant = DefaultAntBuilder(project, AntLoggingAdapter())
            ant.importBuild(antScriptFile) { "mpsbuild-$it" }

            project.configurations.create("mpsmodules")

            val publishing = project.extensions.findByType(PublishingExtension::class.java)
            val publicationsVersion = ("" + project.version).ifEmpty { "0.1" }
            publishing?.apply {
                publications {
                    for (publicationData in generator.publications) {
                        it.create("mpsmodule-${publicationData.name}", MavenPublication::class.java) {
                            it.apply {
                                groupId = project.group.toString()
                                artifactId = publicationData.name
                                version = publicationsVersion
                                pom {
                                    it.withXml {
                                        it.asElement().newChild("dependencies") {
                                            for (jar in publicationData.jars) {
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
                                for (jar in publicationData.jars) {
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
                                                newChild("dependency") {
                                                    newChild("groupId", project.group.toString())
                                                    newChild("artifactId", "$dependency")
                                                    newChild("version", version)
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
                    it.create("allmpsmodules", MavenPublication::class.java) {
                        it.apply {
                            groupId = project.group.toString()
                            artifactId = "allmpsmodules"
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
        val xml = generator.generateXML()
        try {
            FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
        return generator
    }

    private fun copyDependencies(dependenciesConfiguration: Configuration, targetFolder: File): Set<File> {
        val files = dependenciesConfiguration.resolve()
        //val existingFiles = targetFolder.walk().filter { it.isFile }.map { it.normalize() }.toSet()
        val outputFiles = files.map { copyDependency(it, targetFolder).normalize() }.toSet()
        //(existingFiles - outputFiles).forEach { it.delete() }
        return outputFiles
    }

    private val libJarPattern = Regex("""mpsmodule-(.+)-lib-.+-lib-(.+)""")
    private val moduleJarPattern = Regex("""mpsmodule-(.+)-mpsmodule-.+?(-(src|(\d-)?generator))?""")
    private fun copyDependency(file: File, targetFolder: File): File {
        val nameWithoutExtension = file.nameWithoutExtension
        val targetFile = readPOM(file)?.let { pom ->
            val moduleName = pom.getProperty(MODULE_NAME_PROPERTY) ?: return@let null
            val isLibs = pom.getProperty(IS_LIBS_PROPERTY).toBoolean()
            val classifier = pom.getClassifier(file)
            if (isLibs) {
                targetFolder.resolve(pom.group).resolve("$moduleName-lib").resolve("$classifier.${file.extension}")
            } else {
                val classifierSuffix = if (classifier.isEmpty()) "" else "-$classifier"
                targetFolder.resolve(pom.group).resolve("$moduleName$classifierSuffix.${file.extension}")
            }
        } ?: libJarPattern.matchEntire(nameWithoutExtension)?.let { match ->
            val moduleName = match.groupValues[1]
            val libName = match.groupValues[2]
            targetFolder.resolve("$moduleName-lib").resolve("$libName.${file.extension}")
        } ?: moduleJarPattern.matchEntire(nameWithoutExtension)?.let { match ->
            val moduleName = match.groupValues[1]
            val classifierSuffix = match.groupValues.getOrElse(2) { "" }
            targetFolder.resolve("$moduleName$classifierSuffix.${file.extension}")
        } ?: targetFolder.resolve(file.name)

        file.copyTo(targetFile, true)
        return file
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