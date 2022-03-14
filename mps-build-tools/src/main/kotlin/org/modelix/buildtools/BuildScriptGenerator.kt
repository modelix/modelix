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
import org.w3c.dom.Element
import java.io.File
import java.nio.file.Path
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.io.path.absolutePathString
import kotlin.io.path.pathString

class BuildScriptGenerator(val modulesMiner: ModulesMiner,
                           private val modulesToGenerate: List<ModuleId>? = null,
                           val ignoredModules: Set<ModuleId> = HashSet(),
                           val initialMacros: Macros = Macros(),
                           val buildDir: File = File(".", "build")) {

    private var compileCycleIds: Map<DependencyGraph<FoundModule, ModuleId>.DependencyNode, Int> = HashMap()
    var generatorHeapSize: String = "2G"
    val ideaPlugins: MutableList<IdeaPlugin> = ArrayList()

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

    fun getMpsHome() = modulesMiner.getModules().mpsHome ?: throw RuntimeException("mps.home not found")

    fun getMacros(): Macros {
        val mpsHome = getMpsHome()
        return initialMacros.with(
            "platform_lib" to mpsHome.toPath().resolve("lib"),
            "lib_ext" to mpsHome.toPath().resolve("lib").resolve("ext"),
            "mps_home" to mpsHome.toPath(),
            "mps.home" to mpsHome.toPath(),
        )
    }

    fun generateAnt(): Document {
        val resolver = ModuleResolver(modulesMiner.getModules(), ignoredModules)
        val (plan, dependencyGraph) = generatePlan(getModulesToGenerate(), resolver)
        val mpsHome = getMpsHome()
        val macros = getMacros()
        val module2ideaPlugin = ideaPlugins.associateBy { it.module }

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("default", "generate")

            newChild("property") {
                setAttribute("name", "mps.home")
                setAttribute("location", mpsHome.canonicalPath)
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
            newChild("path") {
                setAttribute("id", "path.mps.libs")
                val cp = File(mpsHome, "lib").walk()
                    .filter { it.extension == "jar" }
                    .map { it.absoluteFile.normalize() }
                for (cpItem in cp) {
                    newChild("pathelement") {
                        setAttribute("location", cpItem.absolutePath)
                    }
                }
            }
            for (module in modulesMiner.getModules().getModules().values) {
                newChild("path") {
                    setAttribute("id", "path.module.${module.name}")
                    val cp = getClassPath(module, macros).map { it.absoluteFile.normalize() }
                    for (cpItem in cp) {
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
                            setAttribute("value", "-Xmx$generatorHeapSize")
                        }
                    }
                    for (macro in macros.macros) {
                        newChild("macro") {
                            setAttribute("name", macro.key)
                            setAttribute("path", macro.value.absolutePathString())
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
            val compileDependencyGraph = CompileDependencyGraph(resolver)
            compileDependencyGraph.load(modulesToCompile)
            var compileCycleIdSequence = 0
            val compileCycles = compileDependencyGraph.getNodes().filter { it.modules.any { it.owner is SourceModuleOwner } }
            compileCycleIds = compileDependencyGraph.getNodes().filter { it.modules.size > 1 }.associateWith { ++compileCycleIdSequence }
            for (cycle in compileCycleIds) {
                newChild("path") {
                    setAttribute("id", "path.cycle${cycle.value}")
                    for (module in cycle.key.modules) {
                        newChild("path") {
                            setAttribute("refid", "path.module.${module.name}")
                        }
                    }
                    for (dep in cycle.key.getDependencies()) {
                        val depId = compileCycleIds[dep] ?: continue
                        newChild("path") {
                            setAttribute("refid", "path.cycle${depId}")
                        }
                    }
                }
            }
            for (cycle in compileCycles) {
                val cycleSourceModules = cycle.modules.filter { it.owner is SourceModuleOwner }
                val isCycle = cycle.modules.size > 1
                if (isCycle) {
                    createCompileTarget(
                        modules = cycleSourceModules,
                        classPath = cycleSourceModules.flatMap { it.getOwnJars(macros) },
                        classPathModules = cycle.getTransitiveDependencies(),
                        targetName = getCompileTargetName(cycle)!!,
                        targetDependencies = cycle.getDependencies().mapNotNull { getCompileTargetName(it) },
                        outputDir = getCompileOutputDir(cycle)!!,
                        mpsHome = mpsHome
                    )
                }

                for (module in cycleSourceModules) {
                    val targetName = getCompileTargetName(module)
                    var cp = module.getOwnJars(macros).toList()
                    if (isCycle) cp += getCompileOutputDir(cycle)!!
                    var targetDependencies = cycle.getDependencies().mapNotNull { getCompileTargetName(it) }
                    if (isCycle) targetDependencies += getCompileTargetName(cycle)!!
                    createCompileTarget(
                        modules = listOf(module),
                        classPath = cp,
                        classPathModules = cycle.getTransitiveDependencies() + cycle,
                        targetName = targetName,
                        targetDependencies = targetDependencies,
                        outputDir = getCompileOutputDir(module),
                        mpsHome = mpsHome
                    )
                }

            }

            // target: compile
            newChild("target") {
                setAttribute("depends", modulesToCompile.joinToString(", ") { getCompileTargetName(it) })
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
                    setAttribute("depends", "${getCompileTargetName(sourceModule)}, create-modules-output-dir")
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
                                for (dep in sourceModule.getGenerationDependencies(resolver)) {
                                    newChild("module") {
                                        setAttribute("ref", dep.idAndName.toString())
                                        setAttribute("kind", "rt")
                                    }
                                }
                                for (dep in sourceModule.getClassPathDependencies(resolver)) {
                                    newChild("module") {
                                        setAttribute("ref", dep.idAndName.toString())
                                        setAttribute("kind", "cl")
                                    }
                                }
                            }
                            newChild("uses") {
                                for (lang in sourceModule.getAllUsedLanguages(resolver)) {
                                    newChild("language") {
                                        setAttribute("id", "l:${lang.moduleId}:${lang.name}")
                                    }
                                }
                            }
                            for (jar in sourceModule.getOwnJars(macros)) {
                                newChild("library") {
                                    setAttribute("jar", "./${getLibsTargetFolderName(sourceModule)}/${jar.name}")
                                }
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

                    val jars = sourceModule.getOwnJars(macros)
                    if (jars.isNotEmpty()) {
                        newChild("copy") {
                            setAttribute("todir", getLibsTargetFolder(sourceModule).absolutePath)
                            for (jar in jars) {
                                newChild("file") {
                                    setAttribute("file", jar.absolutePath)
                                }
                            }
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
                    newChild("mkdir") {
                        setAttribute("dir", getModelsTempDir(sourceModule).absolutePath)
                    }
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

            // target: assemble.idea.plugin.___.___
            for (ideaPlugin in ideaPlugins) {
                newChild("target") {
                    setAttribute("name", ideaPlugin.getAssembleTargetName())
                    setAttribute("depends", getAssembleTargetName(ideaPlugin.module))
                    newChild("copy") {
                        setAttribute("todir", ideaPlugin.getLanguagesDir(buildDir).absolutePath)
                        // Here the language jar is only used to load the module, but not the classes
                        for (jar in getAllModuleJarFiles(ideaPlugin.module)) {
                            newChild("file") {
                                setAttribute("file", jar.absolutePath)
                            }
                        }
                    }
                    newChild("copy") {
                        setAttribute("todir", ideaPlugin.getLibDir(buildDir).absolutePath)
                        // Here the language jar is used by the class loader of the IDEA plugin
                        // Separating classes and model files into two different jar would be possible,
                        // but it's easier like this for now.
                        newChild("file") {
                            setAttribute("file", getJarFile(ideaPlugin.module).absolutePath)
                        }
                        for (jar in ideaPlugin.module.getOwnJars(macros)) {
                            newChild("file") {
                                setAttribute("file", jar.absolutePath)
                            }
                        }
                    }
                    val metaInfFolder = ideaPlugin.getPluginDir(buildDir).resolve("META-INF")
                    newChild("mkdir") {
                        setAttribute("dir", metaInfFolder.absolutePath)
                    }
                    newChild("echoxml") {
                        setAttribute("file", metaInfFolder.resolve("plugin.xml").absolutePath)
                        ideaPlugin.applyXml(this).apply {
                            val pluginDependencies = ideaPlugin.pluginDependencies(resolver)
                            for (pluginDependency in pluginDependencies) {
                                newChild("depends", pluginDependency.pluginId)
                            }
                            newChild("extensions") {
                                setAttribute("defaultExtensionNs", "com.intellij")
                                newChild("mps.LanguageLibrary") {
                                    setAttribute("dir", "/languages")
                                }
                            }
                        }
                    }
                    newChild("zip") {
                        setAttribute("destfile", ideaPlugin.getPackagedPlugin(buildDir).absolutePath)
                        setAttribute("baseDir", ideaPlugin.getPluginDir(buildDir).absolutePath)
                    }
                }
            }

            // target: assemble
            newChild("target") {
                setAttribute("name", "assemble")
                val targetDeps = sourceModules.map { it.owner as SourceModuleOwner }.map { getAssembleTargetName(it) } +
                    ideaPlugins.map { it.getAssembleTargetName() }
                setAttribute("depends", targetDeps.joinToString(", "))
            }

            // target: clean
            newChild("target") {
                setAttribute("name", "clean")
                newChild("delete") { setAttribute("dir", getPackagedModulesDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getPackagedModulesTempDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getModelsTempDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getCompileOutputDir().absolutePath) }
                newChild("delete") { setAttribute("dir", getIdeaPluginsBuildDir(buildDir).absolutePath) }
            }
        }

        doc.createElement("target")

        return doc
    }

    fun getModulesToGenerate(): List<ModuleId> {
        return (modulesToGenerate
            ?: modulesMiner.getModules().getModules().values
                .filter { it.owner is SourceModuleOwner && it.moduleType == ModuleType.Language }
                .map { it.moduleId }
                .toList()) - ignoredModules.toSet()
    }

    fun getPublications(): List<Publication> {
        val resolver = ModuleResolver(modulesMiner.getModules(), ignoredModules, true)
        val dependencyGraph = PublicationDependencyGraph(resolver)
        dependencyGraph.load(getModulesToGenerate().mapNotNull { modulesMiner.getModules().getModules()[it] })
        val sourceModules = dependencyGraph.getNodes().flatMap { it.modules }.filter { it.owner is SourceModuleOwner }
        val generatorModules = sourceModules.flatMap { it.owner.modules.values - it }
        val modulesToCompile = sourceModules + generatorModules
        val module2ideaPlugin = ideaPlugins.associateBy { it.module }
        val macros = getMacros()
        val publications = ArrayList<Publication>()

        publications +=  (modulesToCompile - module2ideaPlugin.keys).map { it.owner }.distinct()
            .filterIsInstance<SourceModuleOwner>().map { owner ->
                val nonGen = owner.modules.values.first { it.moduleType != ModuleType.Generator }
                val gen = owner.modules.values.filter { it.moduleType == ModuleType.Generator }
                ModulePublication(
                    nonGen.name,
                    listOf(PublicationFile(getJarFile(nonGen), ""), PublicationFile(getSrcJarFile(nonGen), "src")) +
                        gen.mapIndexed { i, m -> PublicationFile(getJarFile(m), if (i == 0) "generator" else "$i-generator") },
                    owner.modules.values
                        .flatMap { it.getClassPathDependencies(resolver) }
                        .map { it.owner }
                        .distinct()
                        .map { PublicationDependency(it.modules.values.first().name, it.path.getLocalAbsolutePath()) },
                    owner.modules.values.flatMap { it.getOwnJars(macros) }
                )
            }
        publications += ideaPlugins.map { plugin ->
            IdeaPluginPublication(
                "idea.plugin." + plugin.getPluginId(),
                plugin.getPluginId(),
                listOf(PublicationFile(plugin.getPackagedPlugin(buildDir), "")),
                plugin.pluginDependencies(resolver).map { PublicationDependency(it.pluginId, it.path.getLocalAbsolutePath()) }
            )
        }
        return publications
    }

    fun getGeneratedFiles(owner: SourceModuleOwner): List<File> {
        val nonGen = owner.modules.values.first { it.moduleType != ModuleType.Generator }
        val gen = owner.modules.values.filter { it.moduleType == ModuleType.Generator }
        val moduleJars = listOf(getJarFile(nonGen), getSrcJarFile(nonGen)) + gen.map { getJarFile(it) }
        val libJars = owner.modules.values.flatMap { it.getOwnJars(getMacros()) }
            .map { getLibsTargetFolder(nonGen).resolve(it.name) }
        return moduleJars + libJars
    }

    private fun Element.createCompileTarget(
        modules: List<FoundModule>,
        classPath: List<File>,
        classPathModules: Set<DependencyGraph<FoundModule, ModuleId>.DependencyNode>,
        targetName: String,
        targetDependencies: List<String>,
        outputDir: File,
        mpsHome: File,
    ) {
        newChild("target") {
            setAttribute("name", targetName)
            setAttribute("depends", (listOf("generate") + targetDependencies).joinToString(", "))

            newChild("mkdir") {
                setAttribute("dir", outputDir.absolutePath)
            }
            for (module in modules) {
                newChild("mkdir") {
                    setAttribute("dir", getSourceGenDir(module).absolutePath)
                }
            }
            newChild("javac") {
                setAttribute("destdir", outputDir.absolutePath)
                setAttribute("fork", "false")
                setAttribute("encoding", "utf8")
                setAttribute("includeantruntime", "false")
                setAttribute("debug", "true")
                setAttribute("source", "11")
                setAttribute("target", "11")
                newChild("compilerarg") {
                    setAttribute("value", "-Xlint:none")
                }
                for (module in modules) {
                    newChild("src") {
                        newChild("path") {
                            setAttribute("location", getSourceGenDir(module).absolutePath)
                        }
                    }
                }
                newChild("classpath") {
                    val normalizedClassPath =
                        classPath.map { it.absoluteFile.normalize() }.distinct()
                    for (cpItem in normalizedClassPath) {
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
                    for (classPathModule in classPathModules) {
                        getCompileOutputDir(classPathModule)?.let {
                            newChild("pathelement") {
                                setAttribute("path", it.absolutePath)
                            }
                        }
                        newChild("path") {
                            val pathName = if (classPathModule.modules.size > 1) {
                                "path.cycle${compileCycleIds[classPathModule]}"
                            } else {
                                "path.module.${classPathModule.modules.first().name}"
                            }
                            setAttribute("refid", pathName)
                        }
                    }
                    newChild("path") {
                        setAttribute("refid", "path.mps.libs")
                    }
                }
            }
        }
    }

    private fun getGeneratorIndex(module: FoundModule): Int {
        return module.owner.modules.values.filter { it.moduleType == ModuleType.Generator }.indexOf(module)
    }
    private fun getGeneratorIndexPart(module: FoundModule): String {
        val index = getGeneratorIndex(module)
        return if (index == 0) "" else "-$index"
    }
    private fun getCompileTargetName(module: FoundModule): String {
        return if (module.moduleType == ModuleType.Generator) {
            "compile.generator${getGeneratorIndex(module)}.${module.name}"
        } else {
            "compile.${module.name}"
        }
    }
    private fun getCompileTargetName(cycle: DependencyGraph<FoundModule, ModuleId>.DependencyNode): String? {
        if (!requiresCompile(cycle)) return null
        return if (cycle.modules.size == 1)
            getCompileTargetName(cycle.modules.first())
        else
            "compile.cycle.${compileCycleIds[cycle]}"
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
    private fun getLibsTargetFolder(module: FoundModule): File {
        return getPackagedModulesDir().resolve(getLibsTargetFolderName(module))
    }
    private fun getLibsTargetFolderName(module: FoundModule): String {
        return getJarFile(module).nameWithoutExtension + "-lib"
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
    private fun getAllModuleJarFiles(module: FoundModule): List<File> {
        return module.owner.modules.values.map { getJarFile(it) } + getSrcJarFile(module)
    }
    private fun getNonGeneratorModule(module: FoundModule): FoundModule {
        return if (module.moduleType != ModuleType.Generator) {
            module
        } else {
            module.owner.modules.values.find { it.moduleType != ModuleType.Generator }
                ?: throw RuntimeException("Generator without language in: " + module.owner.path.getLocalAbsolutePath())
        }
    }
    fun getPackagedModulesDir() = File(buildDir, "packaged-modules")
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
    private fun getCompileOutputDir(cycle: DependencyGraph<FoundModule, ModuleId>.DependencyNode): File? {
        if (!requiresCompile(cycle)) return null
        return if (cycle.modules.size == 1)
            getCompileOutputDir(cycle.modules.first())
        else
            File(getCompileOutputDir(), "cycle.${compileCycleIds[cycle]}")
    }
    private fun requiresCompile(cycle: DependencyGraph<FoundModule, ModuleId>.DependencyNode): Boolean {
        return cycle.modules.any { it.owner is SourceModuleOwner }
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
    private fun getClassPath(module: FoundModule, macros: Macros): List<File> {
        return when(val owner = module.owner) {
            is SourceModuleOwner -> {
                listOf(getCompileOutputDir(module))
            }
            is LibraryModuleOwner -> {
                owner.getPrimaryAndGeneratorJars()
            }
            is PluginModuleOwner -> {
                owner.path.getLocalAbsolutePath().toFile()
                    .walk().filter { it.extension == "jar" }.toList()
            }
            else -> throw RuntimeException("Unknown owner: $owner")
        } + module.getOwnJars(macros)
    }

    private fun generatePlan(modulesToGenerate: List<ModuleId>, resolver: ModuleResolver): Pair<GenerationPlan, GeneratorDependencyGraph> {
        val planBuilder = GenerationPlanBuilder(resolver)
        val dependencyGraph = planBuilder.build(modulesToGenerate.mapNotNull { modulesMiner.getModules().getModules()[it] })
        return planBuilder.plan to dependencyGraph
    }

    open class Publication(val name: String,
                           val files: List<PublicationFile>,
                           val dependencies: List<PublicationDependency>)
    class ModulePublication(name: String,
                            jars: List<PublicationFile>,
                            dependencies: List<PublicationDependency>,
                            val libs: List<File>): Publication(name, jars, dependencies)
    class IdeaPluginPublication(name: String,
                                val pluginId: String,
                                files: List<PublicationFile>,
                                dependencies: List<PublicationDependency>): Publication(name, files, dependencies)
    class PublicationFile(val file: File, val classifier: String)
    class PublicationDependency(val name: String, val path: Path)
    class IdeaPlugin(val module: FoundModule, val version: String, val pluginXml: Document?) {
        init {
            require(module.moduleType == ModuleType.Solution) {
                "Only solutions are allowed for IDEA plugins. ${module.name} is of type ${module.moduleType}."
            }
        }
        fun getPluginId() = module.moduleDescriptor?.ideaPluginId
            ?: throw RuntimeException("No idea plugin ID specified in module ${module.name}")
        fun getAssembleTargetName() = "assemble.idea.plugin.${getPluginId()}"
        fun getPluginDir(buildDir: File) = getIdeaPluginsBuildDir(buildDir).resolve(getPluginId())
        fun getPackagedPlugin(buildDir: File): File = getIdeaPluginsBuildDir(buildDir).resolve(getPluginId() + ".zip")
        fun getLanguagesDir(buildDir: File) = getPluginDir(buildDir).resolve("languages")
        fun getLibDir(buildDir: File) = getPluginDir(buildDir).resolve("lib")
        fun applyXml(targetParent: Element): Element {
            val rootElement: Element = if (pluginXml != null) {
                targetParent.appendChild(targetParent.ownerDocument.importNode(pluginXml.documentElement, true)) as Element
            } else {
                targetParent.newChild("idea-plugin") {}
            }
            rootElement.apply {
                newChild("id", getPluginId())
                newChild("name", getPluginId())
                newChild("version", version)
            }
            return rootElement
        }
        fun pluginDependencies(resolver: ModuleResolver) = module.getClassPathDependencies(resolver)
            .map { it.owner }.filterIsInstance<PluginModuleOwner>()
    }
}

private fun getIdeaPluginsBuildDir(buildDir: File) = buildDir.resolve("idea-plugins")