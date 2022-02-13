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
package org.modelix.workspace.modelimport

import com.intellij.ide.GeneralSettings
import com.intellij.util.ReflectionUtil
import jetbrains.mps.tool.environment.EnvironmentConfig
import jetbrains.mps.tool.environment.IdeaEnvironment
import jetbrains.mps.RuntimeFlags
import jetbrains.mps.TestMode
import jetbrains.mps.tool.environment.Environment
import jetbrains.mps.util.PathManager
import java.io.File
import java.lang.RuntimeException

class EnvironmentLoader(private val environmentSpec: EnvironmentSpec) {
    private var environment: Environment? = null

    fun loadEnvironment(): IdeaEnvironment {
        check(environment == null) { "Already loaded" }

        // If you get the exception "Could not find installation home path"
        // Set "-Didea.home" in the VM options
        ReflectionUtil.setField(PathManager::class.java, null, String::class.java, "ourHomePath", System.getProperty("idea.home"))
        ReflectionUtil.setField(PathManager::class.java, null, String::class.java, "ourIdeaPath", System.getProperty("idea.home"))
        val config = EnvironmentConfig.defaultConfig()
//            .withBootstrapLibraries()
//            .withBuildPlugin()
//            .withCorePlugin()
//            .withDefaultPlugins()
//            .withDefaultSamples()
//            .withGit4IdeaPlugin()
//            .withGit4IdeaStubsPlugin()
//            .withJavaPlugin()
//            .withMigrationPlugin()
//            .withVcsPlugin()
//            .withWorkbenchPath()
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-console", "jetbrains.mps.console")
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-debugger-api", "jetbrains.mps.debugger.api")
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-debugger-java", "jetbrains.mps.debugger.java")
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-devkit", "jetbrains.mps.ide.devkit")
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-httpsupport", "jetbrains.mps.ide.httpsupport")
//        config.addPlugin(PathManager.getHomePath() + "/plugins/mps-execution-languages", "jetbrains.mps.execution.languages")

        environmentSpec.plugins.forEach { config.addPlugin(it.path, it.id) }
        environmentSpec.libraries.forEach { config.addLib(it.path) }

//        val homePath = File(PathManager.getHomePath())
//        println("Loading languages and plugins from " + homePath.absolutePath)
//        loadLangJars(config, File(homePath, "languages"))
//        loadLangJars(config, File(homePath, "plugins"))

        val environment = IdeaEnvironment(config)
        this.environment = environment
        RuntimeFlags.setTestMode(TestMode.NONE)
        try {
            println("environment.init()")
            environment.init()
            if (environmentSpec.projects.isEmpty()) {
                println("environment.createEmptyProject()")
                environment.createEmptyProject()
            } else {
                GeneralSettings.getInstance().confirmOpenNewProject = GeneralSettings.OPEN_PROJECT_NEW_WINDOW
                environmentSpec.projects.forEach {
                    println("environment.openProject(${it.path}) ")
                    environment.openProject(File(it.path))
                }
            }
            return environment
        } catch (e: Throwable) {
            try {
                println("environment.dispose()")
                environment.dispose()
            } catch (e: Exception) {
            }
            throw RuntimeException("Issue with initializing environment and creating project", e)
        }
    }

//    private fun loadLangJars(config: EnvironmentConfig, folder: File) {
//        if (!folder.exists()) return
//        if (folder.isFile) {
//            if (folder.name.lowercase(Locale.getDefault()).endsWith(".jar")) {
//                config.addLib(folder.absolutePath)
//            }
//        } else {
//            folder.listFiles()?.forEach { subfolder ->
//                loadLangJars(config, subfolder)
//            }
//        }
//    }
}