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
import org.gradle.api.artifacts.ResolvedConfiguration
import org.gradle.api.artifacts.ResolvedDependency
import org.gradle.api.publish.PublishingExtension
import org.gradle.api.publish.maven.MavenPublication
import org.gradle.api.publish.maven.tasks.GenerateMavenPom
import org.gradle.api.publish.maven.tasks.PublishToMavenRepository
import org.gradle.api.tasks.Exec
import org.modelix.buildtools.*
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.text.SimpleDateFormat
import java.util.*
import java.util.stream.Collectors
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class MPSBuildPlugin : Plugin<Project> {
    private val stubsPattern = Regex("stubs#([^#]+)#([^#]+)#([^#]+)")
    private lateinit var project: Project
    private lateinit var settings: MPSBuildSettings
    private val folder2owningDependency = HashMap<Path, ResolvedDependency>()

    lateinit var taskCopyDependencies: Task
    lateinit var taskGenerateAntScript: Task
    lateinit var taskCheckConfig: Task
    lateinit var taskLoadPomDependencies: Task
    lateinit var taskPackagePublications: Task

    private fun newTask(name: String): Task = project.task(name)

    private fun newTask(name: String, body: ()->Unit): Task {
        return project.task(name) { task ->
            val action = Action { task: Task? ->
                body()
            }
            task.actions = listOf(action)
        }
    }

    private fun taskBody(task: Task, body: ()->Unit) {
        val action = Action { task: Task? ->
            body()
        }
        task.actions = listOf(action)
    }

    override fun apply(project_: Project) {
        project = project_
        settings = project.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        settings.setProject(project_)

        taskCopyDependencies = newTask("copyDependencies")
        taskGenerateAntScript = newTask("generateMpsAntScript")
        taskCheckConfig = newTask("checkMpsbuildConfig")
        taskLoadPomDependencies = newTask("loadPomDependencies")
        taskPackagePublications = newTask("packageMpsPublications")

        project_.afterEvaluate { project__: Project ->
            settings.validate()
            afterEvaluate()
        }
    }

    private fun afterEvaluate() {
        val buildDir = project.buildDir.resolve("mpsbuild").normalize()
        val dependenciesDir = buildDir.resolve("dependencies")
        val publicationsDir = buildDir.resolve("publications")
        val antScriptFile = File(buildDir, "build-modules.xml")
        val publicationsVersion = getPublicationsVersion()
        val mavenPublications = HashMap<MPSBuildSettings.PublicationSettings, MavenPublication>()

        var mpsDir: File? = null

        taskBody(taskCopyDependencies) {
            copyDependencies(settings.dependenciesConfig, dependenciesDir.normalize())
            mpsDir = downloadMps(settings, buildDir.resolve("mps"))
        }
        settings.getTaskDependencies().forEach { taskCopyDependencies.dependsOn(it) }

        lateinit var generator: BuildScriptGenerator
        taskBody(taskGenerateAntScript) {
            val dirsToMine = setOfNotNull(dependenciesDir, mpsDir)
            generator = createBuildScriptGenerator(settings, project, buildDir, dirsToMine)
            generateAntScript(generator, antScriptFile)
        }
        taskGenerateAntScript.dependsOn(taskCopyDependencies)

        lateinit var publication2dnode: Map<MPSBuildSettings.PublicationSettings, DependencyGraph<FoundModule, ModuleId>.DependencyNode>
        lateinit var getPublication: (DependencyGraph<FoundModule, ModuleId>.DependencyNode)->MPSBuildSettings.PublicationSettings?

        taskBody(taskCheckConfig) {
            val resolver = ModuleResolver(generator.modulesMiner.getModules(), generator.ignoredModules)
            val graph = PublicationDependencyGraph(resolver)
            val publication2modules = settings.getPublications().associateWith { resolvePublicationModules(it, resolver).toSet() }
            for (modulesA in publication2modules) {
                for (modulesB in publication2modules) {
                    if (modulesA.key == modulesB.key) continue
                    val modulesInBoth = modulesA.value.intersect(modulesB.value)
                    require(modulesInBoth.isEmpty()) {
                        "Modules found in publication ${modulesA.key.name} and ${modulesB.key.name}: ${modulesInBoth.map { it.name }.sorted()}"
                    }
                }
            }
            graph.load(publication2modules.values.flatten())
            val module2publication = publication2modules.flatMap { entry -> entry.value.map { it to entry.key } }.associate { it }

            getPublication = {
                it.modules.mapNotNull { module2publication[it] }.firstOrNull()
            }

            val checkCyclesBetweenPublications = {
                val cycleDetection = object : CycleDetection<DependencyGraph<FoundModule, ModuleId>.DependencyNode, MPSBuildSettings.PublicationSettings>() {
                    override fun getOutgoingEdges(element: DependencyGraph<FoundModule, ModuleId>.DependencyNode): Iterable<DependencyGraph<FoundModule, ModuleId>.DependencyNode> {
                        return element.getDependencies()
                    }

                    override fun getCategory(element: DependencyGraph<FoundModule, ModuleId>.DependencyNode): MPSBuildSettings.PublicationSettings? {
                        return getPublication(element)
                    }
                }
                cycleDetection.process(graph.getNodes())
                for (cycle in cycleDetection.cycles) {
                    val pubs = cycle.mapNotNull { getPublication(it) }.distinct()
                    if (pubs.size > 1) {
                        throw RuntimeException("Cycle between publications ${pubs.joinToString(" and ") { it.name } } probably caused by these modules: " + cycle.map { it.modules.map { it.name } })
                    }
                }
            }
            checkCyclesBetweenPublications()
            publication2dnode = publication2modules.entries.associate {
                it.key to graph.mergeElements(it.value)
            }
            checkCyclesBetweenPublications()

            val ensurePublicationsNotMerged: ()->Unit = {
                for (publicationA in publication2dnode) {
                    for (publicationB in publication2dnode) {
                        if (publicationA.key == publicationB.key) continue
                        require(publicationA.value.getMergedNode() != publicationB.value.getMergedNode()) {
                            "Unexpected merge of publications '${publicationA.key.name}' and '${publicationB.key.name}'"
                        }
                    }
                }
            }

            ensurePublicationsNotMerged()
            graph.mergeCycles()
            ensurePublicationsNotMerged()

            // merge nodes with exclusive direct dependency between them
            while (true) {
                var anyMerge = false
                for (n in graph.getNodes().filter { it.getReverseDependencies().size == 1 }) {
                    if (n.modules.all { it.owner !is SourceModuleOwner }) continue
                    val reverseDependencies = n.getReverseDependencies()
                    if (reverseDependencies.size != 1) continue // may have changed, because this loop modifies the graph
                    if (publication2dnode.values.map { it.getMergedNode() }.contains(n)) continue
                    graph.mergeNodes(n, reverseDependencies.first())
                    anyMerge = true
                }
                if (!anyMerge) break
            }

            ensurePublicationsNotMerged()

            for (node in graph.getNodes()) {
                val modules = node.modules
                    .filter { it.owner is SourceModuleOwner }
                    .map { it.name }
                    .filter { !it.startsWith("stubs#") }
                    .sorted()
                if (modules.isEmpty()) continue
                val publication = getPublication(node)
                require(publication != null) {
                    "Module $modules is used by multiple publications ${node.getReverseDependencies().mapNotNull(getPublication).map { it.name }}, but not part of any publication itself."
                }
//                println("Publication ${publication.name}")
//                for (module in modules) {
//                    println("    $module")
//                }
            }
        }
        taskCheckConfig.dependsOn(taskGenerateAntScript)

        val taskAssembleMpsModules = project.tasks.create("assembleMpsModules", Exec::class.java) {
            it.workingDir = antScriptFile.parentFile
            it.commandLine = listOf("ant", "-f", antScriptFile.absolutePath, "assemble")
            it.standardOutput = System.out
            it.errorOutput = System.err
            it.standardInput = System.`in`
        }
        taskAssembleMpsModules.dependsOn(taskGenerateAntScript)

        taskBody(taskLoadPomDependencies) {
            for (publication in settings.getPublications()) {
                val dnode = publication2dnode[publication]!!.getMergedNode()
                val pluginModuleNames = settings.getPluginModuleNames()
                val modulesAndStubs = dnode.modules.filter { !pluginModuleNames.contains(it.name) }
                val stubs = modulesAndStubs.filter { it.name.startsWith("stubs#") }.toSet()
                mavenPublications[publication]!!.pom { pom ->
                    pom.withXml { xml ->
                        xml.asElement().newChild("dependencies") {
                            // dependencies between own publications
                            for (dependency in dnode.getDependencies().mapNotNull(getPublication)) {
                                newChild("dependency") {
                                    newChild("groupId", project.group.toString())
                                    newChild("artifactId", dependency.name.toValidPublicationName())
                                    newChild("version", publicationsVersion)
                                }
                            }

                            // dependencies to downloaded publications
                            val externalDependencies = (dnode.getDependencies() + dnode).flatMap { it.modules }
                                .mapNotNull { getOwningDependency(it.owner.path.getLocalAbsolutePath()) }
                                .distinct()
                            for (dependency in externalDependencies) {
                                newChild("dependency") {
                                    newChild("groupId", dependency.moduleGroup)
                                    newChild("artifactId", dependency.moduleName)
                                    newChild("version", dependency.moduleVersion)
                                }
                            }

                            // dependencies to java libraries
                            for (stub in stubs) {
                                val match = stubsPattern.matchEntire(stub.name)
                                    ?: throw RuntimeException("Failed to extract maven coordinates from ${stub.name}")
                                newChild("dependency") {
                                    newChild("groupId", match.groupValues[1])
                                    newChild("artifactId", match.groupValues[2])
                                    newChild("version", match.groupValues[3])
                                }
                            }
                        }
                    }
                }
            }
        }
        taskLoadPomDependencies.dependsOn(taskCheckConfig)

        taskBody(taskPackagePublications) {
            val packagedModulesDir = generator.getPackagedModulesDir()
            val generatedPlugins = generator.getGeneratedPlugins().entries.associate { it.key.name to it.value }
            val pluginModuleNames = settings.getPluginModuleNames()
            for (publication in settings.getPublications()) {
                val dnode = publication2dnode[publication]!!.getMergedNode()
                val modulesAndStubs = dnode.modules.filter { !pluginModuleNames.contains(it.name) }
                val stubs = modulesAndStubs.filter { it.name.startsWith("stubs#") }.toSet()
                val modules = modulesAndStubs - stubs
                val generatedFiles = modules.map { it.owner }.filterIsInstance<SourceModuleOwner>()
                    .distinct().flatMap { generator.getGeneratedFiles(it) }.map { it.absoluteFile.normalize() }
                val zipFile = publicationsDir.resolve("${publication.name}.zip")
                zipFile.parentFile.mkdirs()
                zipFile.outputStream().use { os ->
                    ZipOutputStream(os).use { zipStream ->
                        val packFile: (File, Path, Path)->Unit = { file, path, parent ->
                            val relativePath = parent.relativize(path).toString()
                            require(!path.toString().startsWith("..") && !path.toString().contains("/../")) {
                                "$file expected to be inside $parent"
                            }
                            val entry = ZipEntry(relativePath)
                            zipStream.putNextEntry(entry)
                            file.inputStream().use { istream -> istream.copyTo(zipStream) }
                            zipStream.closeEntry()
                        }
                        for (file in generatedFiles) {
                            packFile(file, file.toPath(), packagedModulesDir.parentFile.toPath())
                        }
                        for (ideaPlugin in publication.ideaPlugins) {
                            val pluginFolder = generatedPlugins[ideaPlugin.getImplementationModuleName()]
                                ?: throw RuntimeException("Output for plugin '${ideaPlugin.getImplementationModuleName()}' not found")
                            for (file in pluginFolder.walk()) {
                                if (file.isFile) {
                                    packFile(file, file.toPath(), pluginFolder.parentFile.parentFile.toPath())
                                }
                            }
                        }
                    }
                }
            }

            println("Version $publicationsVersion ready for publishing")
        }
        taskPackagePublications.dependsOn(taskCheckConfig)
        taskPackagePublications.dependsOn(taskLoadPomDependencies)
        taskPackagePublications.dependsOn(taskAssembleMpsModules)
        taskAssembleMpsModules.mustRunAfter(taskCheckConfig) // fail fast

        val mpsPublicationsConfig = project.configurations.create("mpsPublications")
        val publishing = project.extensions.findByType(PublishingExtension::class.java)
        publishing?.publications { publications ->
            for (publicationData in settings.getPublications()) {
                publications.create("_"+ publicationData.name + "_", MavenPublication::class.java) { publication ->
                    mavenPublications[publicationData] = publication
                    publication.groupId = project.group.toString()
                    publication.artifactId = publicationData.name.toValidPublicationName()
                    publication.version = publicationsVersion

                    val zipFile = publicationsDir.resolve("${publicationData.name}.zip")
                    val artifact = project.artifacts.add(mpsPublicationsConfig.name, zipFile) {
                        it.type = "zip"
                        it.builtBy(taskPackagePublications)
                    }
                    publication.artifact(artifact)
                }
            }
            publications.create("all", MavenPublication::class.java) { publication ->
                publication.groupId = project.group.toString()
                publication.artifactId = "all"
                publication.version = publicationsVersion
                publication.pom { pom ->
                    pom.withXml { xml ->
                        xml.asElement().newChild("dependencies") {
                            for (publicationData in settings.getPublications()) {
                                newChild("dependency") {
                                    newChild("groupId", project.group.toString())
                                    newChild("artifactId", publicationData.name.toValidPublicationName())
                                    newChild("version", publicationsVersion)
                                }
                            }
                        }
                    }
                }
            }
        }

        project.tasks.withType(GenerateMavenPom::class.java).matching { it.name.matches(Regex(".+_.+_.+")) }.all {
            it.dependsOn(taskLoadPomDependencies)
        }
    }

    private fun getPublicationsVersion() = if (project.version == Project.DEFAULT_VERSION) {
        null
    } else {
        ("" + project.version).ifEmpty { null }
    } ?: generateVersionNumber(settings.mpsMajorVersion)

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

    private fun generateVersionNumber(mpsVersion: String?): String {
        val timestamp = SimpleDateFormat("yyyyMMddHHmm").format(Date())
        val version = if (mpsVersion == null) timestamp else "$mpsVersion-$timestamp"
        println("##teamcity[buildNumber '${version}']")
        return version
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
        val resolver = ModuleResolver(modulesMiner.getModules(), emptySet())
        val modulesToGenerate = settings.getPublications()
            .flatMap { resolvePublicationModules(it, resolver) }.map { it.moduleId }
        val generator = BuildScriptGenerator(
            modulesMiner = modulesMiner,
            modulesToGenerate = modulesToGenerate,
            ignoredModules = emptySet(),
            initialMacros = settings.getMacros(project.projectDir.toPath()),
            buildDir = buildDir
        )
        generator.generatorHeapSize = settings.generatorHeapSize
        generator.ideaPlugins += settings.getPublications().flatMap { it.ideaPlugins }.map { pluginSettings ->
            val moduleName = pluginSettings.getImplementationModuleName()
            val module = (modulesMiner.getModules().getModules().values.find { it.name == moduleName }
                ?: throw RuntimeException("module $moduleName not found"))
            BuildScriptGenerator.IdeaPlugin(module, "" + project.version, pluginSettings.pluginXml)
        }
        return generator
    }

    private fun resolvePublicationModules(publication: MPSBuildSettings.PublicationSettings, resolver: ModuleResolver): List<FoundModule> {
        val modulesToGenerate: MutableList<FoundModule> = ArrayList()
        val includedPaths = publication.resolveIncludedModules(project.projectDir.toPath())
        val includedModuleNames = publication.getIncludedModuleNames()
        val foundModuleNames: MutableSet<String> = HashSet()
        if (includedPaths != null || includedModuleNames != null) {
            for (module in resolver.availableModules.getModules().values) {
                if (includedModuleNames != null && includedModuleNames.contains(module.name)) {
                    modulesToGenerate.add(module)
                    foundModuleNames.add(module.name)
                } else if (includedPaths != null) {
                    val modulePath = module.owner.path.getLocalAbsolutePath()
                    if (includedPaths.stream().anyMatch { include: Path? -> modulePath.startsWith(include) }) {
                        modulesToGenerate.add(module)
                    }
                }
            }
        }
        val missingModuleNames = includedModuleNames!!.stream()
            .filter { n: String -> !foundModuleNames.contains(n) }.sorted().collect(Collectors.toList())
        if (missingModuleNames.isNotEmpty()) {
            throw RuntimeException("Modules not found: $missingModuleNames")
        }
        return modulesToGenerate
    }

    private fun copyDependencies(dependenciesConfiguration: Configuration, targetFolder: File) {
        val dependencies = dependenciesConfiguration.resolvedConfiguration.getAllDependencies()
        for (dependency in dependencies) {
            val files = dependency.moduleArtifacts.map { it.file }
            for (file in files) {
                copyDependency(file, targetFolder, dependency)
            }
        }
    }

    private fun copyDependency(file: File, targetFolder: File, dependency: ResolvedDependency) {
        when (file.extension) {
            "jar" -> {
                generateStubsSolution(dependency, targetFolder.resolve("stubs"))
            }
            "zip" -> {
                val targetFile = targetFolder
                    .resolve("modules")
                    .resolve(dependency.moduleGroup)
                    .resolve(dependency.moduleName)
                    //.resolve(file.name)
                folder2owningDependency[targetFile.absoluteFile.toPath().normalize()] = dependency
                copyAndUnzip(file, targetFile)
            }
            else -> println("Ignored file $file from dependency ${dependency.module.id}")
        }
    }

    private fun getOwningDependency(file: Path): ResolvedDependency? {
        var f: Path? = file.toAbsolutePath().normalize()
        while (f != null) {
            val owner = folder2owningDependency[f]
            if (owner != null) return owner
            f = f.parent
        }
        return null
    }

    private fun copyAndUnzip(sourceFile: File, targetFile: File) {
        targetFile.parentFile.mkdirs()
        if (sourceFile.extension == "zip") {
            if (targetFile.exists()) targetFile.deleteRecursively()
            ZipUtil.unpack(sourceFile, targetFile)
        } else {
            sourceFile.copyTo(targetFile, true)
        }
    }
}