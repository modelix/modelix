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
import java.io.IOException
import java.net.URL
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.text.SimpleDateFormat
import java.util.*
import java.util.jar.Manifest
import java.util.stream.Collectors
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import kotlin.RuntimeException
import kotlin.collections.ArrayList
import kotlin.collections.HashMap
import kotlin.collections.HashSet

const val MODULE_NAME_PROPERTY = "mps.module.name"
const val IDEA_PLUGIN_ID_PROPERTY = "idea.plugin.id"
const val IS_LIBS_PROPERTY = "mps.module.libs"

class MPSBuildPlugin : Plugin<Project> {
    private val stubsPattern = Regex("stubs#([^#]+)#([^#]+)#([^#]+)")
    private lateinit var project: Project
    private lateinit var settings: MPSBuildSettings

    private fun newTask(name: String, body: ()->Unit): Task {
        return project.task(name) { task ->
            val action = Action { task: Task? ->
                body()
            }
            task.actions = listOf(action)
        }
    }

    override fun apply(project_: Project) {
        project = project_
        settings = project.extensions.create("mpsBuild", MPSBuildSettings::class.java)
        settings.setProject(project_)

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
        val publicationsVersion = if (project.version == Project.DEFAULT_VERSION) {
            null
        } else {
            ("" + project.version).ifEmpty { null }
        } ?: generateVersionNumber(settings.mpsFullVersion)
        val mavenPublications = HashMap<MPSBuildSettings.PublicationSettings, MavenPublication>()

        lateinit var copiedDependencies: List<Pom>
        var mpsDir: File? = null

        val taskCopyDependencies = newTask("copyDependencies") {
            copiedDependencies = copyDependencies(settings.dependenciesConfig, dependenciesDir.normalize())
            mpsDir = downloadMps(settings, buildDir.resolve("mps"))

        }

        lateinit var generator: BuildScriptGenerator
        val taskGenerateAntScript = newTask("generateMpsAntScript") {
            val dirsToMine = setOfNotNull(dependenciesDir, mpsDir)
            generator = createBuildScriptGenerator(settings, project, buildDir, dirsToMine)
            generateAntScript(generator, antScriptFile)
        }
        taskGenerateAntScript.dependsOn(taskCopyDependencies)

        val taskAssembleMpsModules = project.tasks.create("assembleMpsModules", Exec::class.java) {
            it.workingDir = antScriptFile.parentFile
            it.commandLine = listOf("ant", "-f", antScriptFile.absolutePath, "assemble")
            it.standardOutput = System.out
            it.errorOutput = System.err
            it.standardInput = System.`in`
        }
        taskAssembleMpsModules.dependsOn(taskGenerateAntScript)

        val taskPackagePublications = newTask("packageMpsPublications") {
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
            val getPublication: (DependencyGraph<FoundModule, ModuleId>.DependencyNode)->MPSBuildSettings.PublicationSettings? = {
                it.modules.mapNotNull { module2publication[it] }.firstOrNull()
            }

            for (entry in module2publication) {
                println("${entry.key.name} belongs to ${entry.value.name}")
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
            val publication2dnode = publication2modules.entries.associate {
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
                    val reverseDependencies = n.getReverseDependencies()
                    if (reverseDependencies.size != 1) continue
                    if (publication2dnode.values.map { it.getMergedNode() }.contains(n)) continue
                    graph.mergeNodes(n, reverseDependencies.first())
                    anyMerge = true
                }
                if (!anyMerge) break
            }

            ensurePublicationsNotMerged()

            for (node in graph.getNodes()) {
                val modules = node.modules.filter { it.owner is SourceModuleOwner }.map { it.name }.sorted()
                if (modules.isEmpty()) continue
                val publication = getPublication(node)
                require(publication != null) {
                    "Module $modules is used by multiple publications ${node.getReverseDependencies().mapNotNull(getPublication).map { it.name }}, but not part of any publication itself."
                }
                println("Publication ${publication.name}")
                for (module in modules) {
                    println("    $module")
                }
            }

            val packagedModulesDir = generator.getPackagedModulesDir()
            for (publication in settings.getPublications()) {
                val dnode = publication2dnode[publication]!!.getMergedNode()
                val modulesAndStubs = dnode.modules
                val stubs = modulesAndStubs.filter { it.name.startsWith("stubs#") }.toSet()
                val modules = modulesAndStubs - stubs
                val generatedFiles = modules.map { it.owner }.filterIsInstance<SourceModuleOwner>()
                    .distinct().flatMap { generator.getGeneratedFiles(it) }.map { it.absoluteFile.normalize() }
                val zipFile = publicationsDir.resolve("${publication.name}.zip")
                zipFile.parentFile.mkdirs()
                zipFile.outputStream().use { os ->
                    ZipOutputStream(os).use { zipStream ->
                        for (file in generatedFiles) {
                            val path = packagedModulesDir.toPath().relativize(file.toPath()).toString()
                            require(!path.startsWith("..") && !path.contains("/../")) {
                                "$file expected to be inside $packagedModulesDir"
                            }
                            val entry = ZipEntry(path)
                            zipStream.putNextEntry(entry)
                            file.inputStream().use { istream -> istream.copyTo(zipStream) }
                            zipStream.closeEntry()
                        }
                    }
                }

                val dependencies = dnode.getDependencies().mapNotNull(getPublication)
                if (dependencies.isNotEmpty() || stubs.isNotEmpty()) {
                    mavenPublications[publication]!!.pom { pom ->
                        pom.withXml { xml ->
                            xml.asElement().newChild("dependencies") {
                                for (dependency in dependencies) {
                                    newChild("dependency") {
                                        newChild("groupId", project.group.toString())
                                        newChild("artifactId", dependency.name.toValidPublicationName())
                                        newChild("version", publicationsVersion)
                                        //newChild("classifier", classifier)
                                    }
                                }
                                for (stub in stubs) {
                                    val match = stubsPattern.matchEntire(stub.name)
                                        ?: throw RuntimeException("Failed to extract maven coordinates from ${stub.name}")
                                    newChild("dependency") {
                                        newChild("groupId", match.groupValues[1])
                                        newChild("artifactId", match.groupValues[2])
                                        newChild("version", match.groupValues[3])
                                        //newChild("classifier", classifier)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            println("Version $publicationsVersion ready for publishing")
        }
        //taskPackagePublications.dependsOn(taskAssembleMpsModules)
        taskPackagePublications.dependsOn(taskGenerateAntScript)

        val mpsPublicationsConfig = project.configurations.create("mpsPublications")
        val publishing = project.extensions.findByType(PublishingExtension::class.java)
        publishing?.publications { publications ->
            for (publicationData in settings.getPublications()) {
                publications.create(publicationData.name, MavenPublication::class.java) { publication ->
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

//                    publication.pom { pom ->
//                        pom.withXml { xml ->
//                            xml.asElement().newChild("dependencies") {
//                                newChild("dependency") {
//                                    newChild("groupId", project.group.toString())
//                                    newChild("artifactId", "mpsmodule-${publicationData.name}".toValidPublicationName())
//                                    newChild("version", publicationsVersion)
//                                    newChild("classifier", classifier)
//                                }
//                            }
//                        }
//                    }
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

    private fun generateVersionNumber(mpsVersion: String?): String {
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