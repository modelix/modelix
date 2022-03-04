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
package org.modelix.buildtools

import org.modelix.headlessmps.ProcessExecutor
import org.w3c.dom.Document
import java.io.File
import java.nio.file.Path
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.io.path.pathString

class BuildScriptGenerator(val modulesMiner: ModulesMiner,
                           val modulesToGenerate: List<ModuleId>? = null,
                           val ignoredModules: Set<ModuleId> = HashSet(),
                           val macros: Map<String, File> = HashMap(),
                           val buildDir: File = File(".", "build")) {

    fun buildModules(antScriptFile: File = File.createTempFile("mps-build-script", ".xml", File(".")), outputHandler: ((String)->Unit)? = null) {
        val xml = generateXML()
        antScriptFile.writeText(xml)

        outputHandler?.let { it(xml) }

        val ant = ProcessExecutor()
        outputHandler?.let { ant.outputHandler = it }
        ant.exec(listOf(getAntPath(), "-f", antScriptFile.canonicalPath))
    }

    fun getAntPath(): String {
        return listOf("/usr/local/bin/ant").firstOrNull { File(it).exists() } ?: "ant"
    }

    fun generateXML(): String {
        val doc = generateAnt()
        return xmlToString(doc)
    }

    fun generateAnt(): Document {
        val modulesToGenerate_ = modulesToGenerate
            ?: modulesMiner.getModules().getModules().values
                .filter { it.owner is SourceModuleOwner && it.moduleType == ModuleType.Language }
                .map { it.moduleId }
                .toList()
        val (plan, dependencyGraph) = generatePlan(modulesToGenerate_ - ignoredModules.toSet())

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("default", "generate")

            val mpsHome = modulesMiner.getModules().mpsHome
            if (mpsHome != null) {
                newChild("property") {
                    setAttribute("name", "mps.home")
                    setAttribute("location", mpsHome.canonicalPath)
                }
            }
            newChild("property") {
                setAttribute("name", "mps_home")
                setAttribute("location", "\${mps.home}")
            }
            newChild("property") {
                setAttribute("name", "artifacts.mps")
                setAttribute("location", "\${mps.home}")
            }

            newChild("path") {
                setAttribute("id", "path.mps.ant.path")
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/ant/lib/ant-mps.jar")
                }
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/log4j.jar")
                }
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/jdom.jar")
                }
            }

            // target: generate
            newChild("target") {
                setAttribute("name", "generate")
                setAttribute("depends", "declare-mps-tasks")
                newChild("echo") {
                    setAttribute("message", "generating")
                }
                newChild("generate") {
                    setAttribute("strictMode", "false")
                    setAttribute("parallelMode", "false")
                    setAttribute("useInplaceTransform", "false")
                    setAttribute("hideWarnings", "false")
                    setAttribute("createStaticRefs", "false")
                    setAttribute("fork", "true")
                    setAttribute("targetJavaVersion", "11")
                    setAttribute("skipUnmodifiedModels", "false")
                    setAttribute("logLevel", "warn")
                    for (plugin in plan.getPlugins()) {
                        newChild("plugin") {
                            setAttribute("path", plugin.path.getLocalAbsolutePath().pathString)
                        }
                    }
                    for (library in plan.getLibraries()) {
                        newChild("library") {
                            setAttribute("file", library.path.getLocalAbsolutePath().pathString)
                        }
                    }
                    for (chunk in plan.chunks) {
                        newChild("chunk") {
                            for (module in chunk.modules.map { it.owner.path.getLocalAbsolutePath().pathString }.distinct()) {
                                newChild("module") {
                                    setAttribute("file", module)
                                }
                            }
                        }
                    }
                    newChild("jvmargs") {
                        newChild("arg") {
                            setAttribute("value", "-ea")
                        }
                        newChild("arg") {
                            setAttribute("value", "-Xmx2G")
                        }
                    }
                    for (macro in macros) {
                        newChild("macro") {
                            setAttribute("name", macro.key)
                            setAttribute("path", macro.value.absolutePath)
                        }
                    }
                }
            }

            // target: declare-mps-tasks
            newChild("target") {
                setAttribute("name", "declare-mps-tasks")
                newChild("taskdef") {
                    setAttribute("resource", "jetbrains/mps/build/ant/antlib.xml")
                    setAttribute("classpathref", "path.mps.ant.path")
                }
            }

            // target: compile.___.__.___
            val sourceModules = plan.chunks.flatMap { it.modules }.filter { it.owner is SourceModuleOwner }
            val generatorModules = sourceModules.flatMap { it.owner.modules.values - it }
            val modulesToCompile = sourceModules + generatorModules
            for (sourceModule in modulesToCompile) {
                newChild("target") {
                    setAttribute("name", "compile.${sourceModule.name}")

                    val taskDependencies = sourceModule.dependencies
                        .mapNotNull { modulesMiner.getModules().getModules()[it.id] }
                        .filter { it.owner is SourceModuleOwner }
                        .joinToString(", ") { "compile.${it.name}" }
                    setAttribute("depends", taskDependencies)

                    newChild("mkdir") {
                        setAttribute("dir", getCompileOutputDir(sourceModule).absolutePath)
                    }
                    newChild("javac") {
                        setAttribute("destdir", getCompileOutputDir(sourceModule).absolutePath)
                        setAttribute("fork", "false")
                        setAttribute("encoding", "utf8")
                        setAttribute("includeantruntime", "false")
                        setAttribute("debug", "true")
                        setAttribute("source", "11")
                        setAttribute("target", "11")
                        newChild("compilerarg") {
                            setAttribute("value", "-Xlint:none")
                        }
                        newChild("src") {
                            newChild("path") {
                                setAttribute("location", getSourceGenDir(sourceModule).absolutePath)
                            }
                        }
                        newChild("classpath") {
                            if (mpsHome != null) {
                                for (jar in File(mpsHome, "lib").walk().filter { it.extension == "jar" }) {
                                    newChild("fileset") {
                                        setAttribute("file", jar.absolutePath)
                                    }
                                }
                            }

                            val classPath = dependencyGraph.getNode(sourceModule.moduleId)!!
                                .getTransitiveDependencies()
                                .flatMap { it.modules }
                                .flatMap { getClassPath(it) }
                                .map { it.canonicalFile }
                                .distinct()
                            for (cpItem in classPath) {
                                if (cpItem.isFile) {
                                    newChild("fileset") {
                                        setAttribute("file", cpItem.absolutePath)
                                    }
                                } else {
                                    newChild("pathelement") {
                                        setAttribute("path", cpItem.absolutePath)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            // target: compile
            newChild("target") {
                setAttribute("depends", modulesToCompile.joinToString(", ") { "compile.${it.name}" })
                setAttribute("name", "compile")
            }

            newChild("target") {
                setAttribute("name", "create-modules-output-dir")
                setAttribute("depends", "declare-mps-tasks")
                newChild("mkdir") {
                    setAttribute("dir", getPackagedModulesDir().absolutePath)
                }
            }
            
            // target: assemble.___.__.___ and assemble.generator.___.__.___
            for (sourceModule in modulesToCompile) {
                newChild("target") {
                    setAttribute("name", getAssembleTargetName(sourceModule))
                    setAttribute("depends", "compile.${sourceModule.name}, create-modules-output-dir")
                    newChild("mkdir") {
                        setAttribute("dir", getJarTempDir(sourceModule).absolutePath)
                    }
                    val metaInfFolder = File(getJarTempDir(sourceModule), "META-INF")
                    newChild("mkdir") {
                        setAttribute("dir", metaInfFolder.absolutePath)
                    }
                    newChild("echoxml") {
                        setAttribute("file", File(metaInfFolder, "module.xml").absolutePath)
                        newChild("module") {
                            setAttribute("namespace", sourceModule.name)
                            val typeString: String = when (sourceModule.moduleType) {
                                ModuleType.Generator -> "generator"
                                ModuleType.Solution -> "solution"
                                ModuleType.Language -> "language"
                                ModuleType.Devkit -> "devkit"
                            }
                            setAttribute("type", typeString)
                            setAttribute("uuid", sourceModule.moduleId.id)
                            newChild("dependencies") {
//                                newChild("module") {
//                                    setAttribute("ref", "")
//                                    setAttribute("kind", "rt")
//                                }
                            }
                            newChild("uses") {
//                                newChild("language") {
//                                    setAttribute("id", "")
//                                }
                            }
                            newChild("classpath") {
                                newChild("entry") {
                                    setAttribute("path", ".")
                                }
                            }
                            newChild("sources") {
                                setAttribute("jar", getSrcJarFile(sourceModule).name)
                                setAttribute("descriptor", sourceModule.owner.path.getLocalAbsolutePath().toFile().name)
                            }
                        }
                    }
                    // ___.__.___.jar
                    newChild("jar") {
                        setAttribute("destfile", getJarFile(sourceModule).absolutePath)
                        setAttribute("duplicate", "preserve")
                        newChild("fileset") {
                            setAttribute("dir", getCompileOutputDir(sourceModule).absolutePath)
                        }
                        newChild("fileset") {
                            setAttribute("dir", getJarTempDir(sourceModule).absolutePath)
                        }
                        newChild("fileset") {
                            setAttribute("dir", getSourceGenDir(sourceModule).absolutePath)
                            setAttribute("includes", "**/trace.info, **/exports, **/*.mps, **/checkpoints")
                        }
                        newChild("fileset") {
                            setAttribute("dir", sourceModule.owner.path.getLocalAbsolutePath().parent.pathString)
                            setAttribute("includes", "icons/**, resources/**")
                        }
                    }
                }
            }
            for (sourceModule in sourceModules) {
                val moduleFolder = sourceModule.owner.path.getLocalAbsolutePath().parent
                newChild("target") {
                    setAttribute("name", getAssembleTargetName(sourceModule.owner as SourceModuleOwner))
                    val targetDependencies = sourceModule.owner.modules.values.map { getAssembleTargetName(it) } + "create-modules-output-dir"
                    setAttribute("depends", targetDependencies.joinToString(", "))
                    // ___.__.___-src.jar
                    val modelFolders = findModelFolders(sourceModule)
                    for (modelFolder in modelFolders) {
                        val modelFolderRelative = moduleFolder.relativize(modelFolder.toPath())
                        newChild("copyModels") {
                            setAttribute("todir", getModelsTempDir(sourceModule).toPath().resolve(modelFolderRelative).pathString)
                            newChild("fileset") {
                                setAttribute("dir", modelFolder.absolutePath)
                                setAttribute("includes", "**/*.mps, **/*.mpsr, **/.model")
                            }
                        }
                    }
                    newChild("jar") {
                        setAttribute("destfile", getSrcJarFile(sourceModule).absolutePath)
                        setAttribute("duplicate", "preserve")
                        newChild("fileset") {
                            setAttribute("dir", getSourceGenDir(sourceModule).absolutePath)
                            newChild("exclude") { setAttribute("name", "**/trace.info") }
                            newChild("exclude") { setAttribute("name", "**/exports") }
                            newChild("exclude") { setAttribute("name", "**/checkpoints") }
                            newChild("exclude") { setAttribute("name", "**/*.mps") }
                        }
                        newChild("zipfileset") {
                            setAttribute("file", sourceModule.owner.path.getLocalAbsolutePath().pathString)
                            setAttribute("prefix", "module")
                        }
                        newChild("zipfileset") {
                            setAttribute("dir", getModelsTempDir(sourceModule).absolutePath)
                            setAttribute("prefix", "module")
                        }
                    }
                }
            }

            // target: assemble
            newChild("target") {
                setAttribute("name", "assemble")
                setAttribute("depends", sourceModules.map { it.owner as SourceModuleOwner }
                    .joinToString(", ") { getAssembleTargetName(it) })
            }

            // target: clean
            newChild("target") {
                setAttribute("name", "clean")
                newChild("delete") { setAttribute("dir", getPackagedModulesDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getPackagedModulesTempDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getCompileOutputDir().absolutePath) }
            }
        }

        doc.createElement("target")

        return doc
    }

    private fun getGeneratorIndex(module: FoundModule): Int {
        return module.owner.modules.values.filter { it.moduleType == ModuleType.Generator }.indexOf(module)
    }
    private fun getGeneratorIndexPart(module: FoundModule): String {
        val index = getGeneratorIndex(module)
        return if (index == 0) "" else "-$index"
    }
    private fun getAssembleTargetName(module: FoundModule): String {
        return if (module.moduleType == ModuleType.Generator) {
            "assemble.generator${getGeneratorIndex(module)}.${module.name}"
        } else {
            "assemble.${module.name}"
        }
    }
    private fun getAssembleTargetName(owner: SourceModuleOwner): String {
        val module = owner.modules.values.first()
        return "assemble.all.${module.name}"
    }
    private fun getJarFile(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            val indexPart = getGeneratorIndexPart(module)
            File(getPackagedModulesDir(), getNonGeneratorModule(module).name + "$indexPart-generator.jar")
        } else {
            File(getPackagedModulesDir(), module.name + ".jar")
        }
    }
    private fun getJarTempDir(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            val indexPart = getGeneratorIndexPart(module)
            File(getPackagedModulesTempDir(), module.name + "$indexPart-generator")
        } else {
            File(getPackagedModulesTempDir(), module.name)
        }
    }
    private fun getSrcJarFile(module: FoundModule): File {
        return File(getPackagedModulesDir(), getNonGeneratorModule(module).name + "-src.jar")
    }
    private fun getNonGeneratorModule(module: FoundModule): FoundModule {
        return if (module.moduleType != ModuleType.Generator) {
            module
        } else {
            module.owner.modules.values.find { it.moduleType != ModuleType.Generator }
                ?: throw RuntimeException("Generator without language in: " + module.owner.path.getLocalAbsolutePath())
        }
    }
    private fun getPackagedModulesDir() = File(buildDir, "packaged-modules")
    private fun getPackagedModulesTempDir() = File(buildDir, "packaged-modules-tmp")
    private fun getModelsTempDir() = File(buildDir, "models-tmp")
    private fun getModelsTempDir(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            File(getModelsTempDir(), module.name + "${getGeneratorIndexPart(module)}-generator")
        } else {
            File(getModelsTempDir(), module.name)
        }
    }
    private fun findModelFolders(module: FoundModule): List<File> {
        val moduleFolder = module.owner.path.getLocalAbsolutePath().parent
        return moduleFolder.toFile().walk()
            .filter { getParentFolderNames(it).all { name -> name != "classes_gen" } }
            .filter { it.extension == "mps" || it.extension == "mpsr" || it.name == ".model" }
            .map { it.parentFile }.distinct()
            .toList()
    }
    private fun getParentFolderNames(file: File): List<String> {
        var parent: File? = file
        val result = ArrayList<String>()
        while (parent != null) {
            result += parent.name
            parent = parent.parentFile
        }
        return result
    }
    private fun getCompileOutputDir() = File(buildDir, "java-out")
    private fun getCompileOutputDir(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            File(getCompileOutputDir(), module.name + "-generator")
        } else {
            File(getCompileOutputDir(), module.name)
        }
    }
    private fun getSourceGenDir(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            module.owner.path.getLocalAbsolutePath().parent.resolve("generator").resolve("source_gen").toFile()
        } else {
            module.owner.path.getLocalAbsolutePath().parent.resolve("source_gen").toFile()
        }
    }
    private fun getModelsDir(module: FoundModule): File {
        return if (module.moduleType == ModuleType.Generator) {
            module.owner.path.getLocalAbsolutePath().parent.resolve("generator").resolve("template").toFile()
        } else {
            module.owner.path.getLocalAbsolutePath().parent.resolve("models").toFile()
        }
    }
    private fun getClassPath(module: FoundModule): List<File> {
        return when(val owner = module.owner) {
            is SourceModuleOwner -> {
                listOf(getCompileOutputDir(module))
            }
            is LibraryModuleOwner -> {
                listOf(owner.path.getLocalAbsolutePath().toFile())
            }
            is PluginModuleOwner -> {
                owner.path.getLocalAbsolutePath().resolve("lib").toFile()
                    .walk().filter { it.extension == "jar" }.toList()
            }
            else -> throw RuntimeException("Unknown owner: $owner")
        }
    }

    private fun generatePlan(modulesToGenerate: List<ModuleId>): Pair<GenerationPlan, DependencyGraph> {
        val planBuilder = GenerationPlanBuilder(modulesMiner.getModules(), ignoredModules)
        val dependencyGraph = planBuilder.build(modulesToGenerate.mapNotNull { modulesMiner.getModules().getModules()[it] })
        return planBuilder.plan to dependencyGraph
    }
}
