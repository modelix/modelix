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
import org.gradle.api.Action
import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.Task
import org.gradle.api.artifacts.Configuration
import org.gradle.api.publish.PublicationContainer
import org.gradle.api.publish.PublishingExtension
import org.modelix.buildtools.ModuleId.Companion.fromString
import org.modelix.gradle.mpsbuild.MPSBuildSettings
import org.modelix.buildtools.FoundModule
import java.lang.RuntimeException
import org.modelix.buildtools.BuildScriptGenerator
import org.modelix.buildtools.ModuleId
import org.modelix.buildtools.ModulesMiner
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
            val generatorAntScript = project.tasks.create("generatorAntScript")
            val action = Action { task: Task? ->
                val modulesMiner = ModulesMiner()
                for (modulePath in settings.resolveModulePaths(project.projectDir.toPath())) {
                    println("Searching for modules in $modulePath")
                    modulesMiner.searchInFolder(modulePath.toFile())
                }
                println("Found modules:")
                for (module in modulesMiner.getModules().getModules().values) {
                    println("    " + module.owner.path.getLocalAbsolutePath())
                }
                val mpsPath = settings.mpsHome
                if (mpsPath != null) {
                    val mpsHome = project.projectDir.toPath().resolve(Path.of(mpsPath)).normalize().toFile()
                    println("mps.home = $mpsHome")
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
                    println("Build script written to " + antScriptFile.absolutePath)
                } catch (e: IOException) {
                    throw RuntimeException(e)
                }
            }
            generatorAntScript.actions = listOf<Action<in Task>>(action)
        }
//        project_.extensions.findByType(PublishingExtension::class.java)!!.publications { container: PublicationContainer? -> }
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