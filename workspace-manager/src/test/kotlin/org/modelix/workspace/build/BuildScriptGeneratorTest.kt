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
package org.modelix.workspace.build

import org.apache.commons.io.FileUtils
import org.apache.commons.io.IOUtils
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import java.io.File
import java.nio.charset.StandardCharsets

internal class BuildScriptGeneratorTest {

    @Test
    fun test() {
        val org_modelix_ui_server = ModuleId("39aab22b-473f-4e44-b037-0c602964897d")
        val org_modelix_notation_impl_baseLanguage = ModuleId("2db6cf34-1ef5-4ea9-ab56-6511aab61960")
        val modulesMiner = ModulesMiner()
        val inputFolders = listOf(File("../mps"), File("../artifacts"), File("../samples"))
        inputFolders.map { it.absoluteFile.toPath() }.forEach { modulesMiner.searchInFolder(ModuleOrigin(it, it)) }
        val generator = BuildScriptGenerator(modulesMiner)
        val xml = generator.generateXML()
        println(xml)
        val antScriptFile = File("auto-generated-build.xml")
        FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)
    }

    @Test
    fun test2() {
        val modulesMiner = ModulesMiner()
        val inputFolders = listOf(File("../artifacts/mps"), File("../generator-test-project"))
        inputFolders.map { it.absoluteFile.toPath() }.forEach { modulesMiner.searchInFolder(ModuleOrigin(it, it)) }
        val generator = BuildScriptGenerator(modulesMiner)
        val xml = generator.generateXML()
        println(xml)
        val antScriptFile = File("generator-test-project-build.xml")
        FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)

        val ant = ProcessBuilder("ant", "-f", antScriptFile.canonicalPath).start()
        IOUtils.copy(ant.inputStream, System.out)
        val exitValue = ant.waitFor()
        assertEquals(0, exitValue)
    }

}