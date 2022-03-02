/*
 * Copyright 2003-2022 JetBrains s.r.o.
 *
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

import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import java.io.File

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
        antScriptFile.writeText(xml)
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
        antScriptFile.writeText(xml)

        val ant = ProcessBuilder("ant", "-f", antScriptFile.canonicalPath).start()
        ant.inputStream.copyTo(System.out)
        val exitValue = ant.waitFor()
        assertEquals(0, exitValue)
    }

    @Test
    fun testPLSA() {
        val modulesMiner = ModulesMiner()
        val inputFolders = listOf(
            File("../artifacts/mps"),
            File("../../mbd_msi_hf/languages"),
            File("../../mbd_msi_hf/solutions"),
            File("../../mbd_msi_hf/devkits"),
//            File("../../mbd_plsa/languages"),
//            File("../../mbd_plsa/solutions"),
//            File("../../mbd_plsa/devkits"),
            File("../../iets3.opensource/code/languages"),
            File("../../iets3.core/code/languages"),
            File("../../mbeddr.core/code/languages"),
            File("../../MPS-extensions/code"),
        )
        inputFolders.map { it.absoluteFile.toPath() }.forEach { modulesMiner.searchInFolder(ModuleOrigin(it, it)) }
        val canon_cpp_plsa = ModuleId("b4f7ab87-0673-4cea-bd16-2ecbb84b6ee7")
        val generator = BuildScriptGenerator(modulesMiner, listOf(canon_cpp_plsa))
        val xml = generator.generateXML()
        println(xml)
        val antScriptFile = File("plsa-build.xml")
        antScriptFile.writeText(xml)

//        val ant = ProcessBuilder("ant", "-f", antScriptFile.canonicalPath).start()
//        ant.inputStream.copyTo(System.out)
//        val exitValue = ant.waitFor()
//        assertEquals(0, exitValue)
    }

    @Test
    fun testMPSExt() {
        val modulesMiner = ModulesMiner()
        val inputFolders = listOf(
            File("../artifacts/mps"),
//            File("../../iets3.opensource/code/languages"),
//            File("../../iets3.core/code/languages"),
//            File("../../mbeddr.core/code/languages"),
            File("../../MPS-extensions/code"),
        )
        inputFolders.map { it.absoluteFile.toPath() }.forEach {
            modulesMiner.searchInFolder(ModuleOrigin(it, it)) { file ->
                !file.path.contains("modelmerge") && !file.path.contains("model.merge")
            }
        }
        val generator = BuildScriptGenerator(modulesMiner, ignoredModules = setOf(ModuleId("")))
        val xml = generator.generateXML()
        println(xml)
        val antScriptFile = File("mpsext-build.xml")
        antScriptFile.writeText(xml)

//        val ant = ProcessBuilder("ant", "-f", antScriptFile.canonicalPath).start()
//        ant.inputStream.copyTo(System.out)
//        val exitValue = ant.waitFor()
//        assertEquals(0, exitValue)
    }

}