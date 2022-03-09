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
import java.lang.RuntimeException
import org.modelix.buildtools.BuildScriptGenerator
import org.modelix.buildtools.ModuleId
import org.modelix.buildtools.ModulesMiner
import org.modelix.buildtools.newChild
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

class MPSBuildPlugin : Plugin<Project> {
    override fun apply(project_: Project) {
        val settings = project_.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        project_.afterEvaluate { project: Project ->
            settings.validate()
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
            val buildDir = File(File(project.projectDir, "build"), "mpsbuild")
            val antScriptFile = File(buildDir, "build-modules.xml")
            val antScriptTask = project.tasks.create("generatorAntScript")
            val action = Action { task: Task? ->
                generateAntScript(settings, project, buildDir, antScriptFile)
            }
            antScriptTask.actions = listOf(action)

            val generator = generateAntScript(settings, project, buildDir, antScriptFile)
            val ant = DefaultAntBuilder(project, AntLoggingAdapter())
            ant.importBuild(antScriptFile) { "mpsbuild-$it" }

            project.configurations.create("mpsmodules")

            val publishing = project.extensions.findByType(PublishingExtension::class.java)
            publishing?.apply {
                publications {
                    for (publicationData in generator.publications) {
                        it.create("mpsmodule-${publicationData.name}", MavenPublication::class.java) {
                            it.apply {
                                groupId = project.group.toString()
                                artifactId = publicationData.name
                                version = (""+project.version).ifEmpty { "0.1" }
                                pom {
                                    it.withXml {
                                        it.asElement().newChild("dependencies") {
                                            for (jar in publicationData.jars) {
                                                newChild("dependency") {
                                                    newChild("groupId", groupId)
                                                    newChild("artifactId", "mpsmodule-" + publicationData.name)
                                                    newChild("version", version)
                                                    newChild("classifier", jar.classifier)
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
                                artifactId = "mpsmodule-" + publicationData.name
                                version = (""+project.version).ifEmpty { "0.1" }
                                for (jar in publicationData.jars) {
                                    val artifact = project.artifacts.add("mpsmodules", jar.file) {
                                        it.type = "jar"
                                        it.classifier = jar.classifier
                                        it.builtBy("mpsbuild-assemble")
                                    }
                                    artifact(artifact)
                                }
                                pom {
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
                    }
                }
            }
        }

    }

    private fun generateAntScript(settings: MPSBuildSettings, project: Project, buildDir: File, antScriptFile: File): BuildScriptGenerator {
        val modulesMiner = ModulesMiner()
        for (modulePath in settings.resolveModulePaths(project.projectDir.toPath())) {
            modulesMiner.searchInFolder(modulePath.toFile())
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
}