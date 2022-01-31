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

import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import java.io.File

internal class BuildScriptGeneratorTest {

    @Test
    fun test() {
        val generator = BuildScriptGenerator(listOf(File("../mps")))
        generator.collectModules()
        val modules = generator.getModules()
        println("${modules.size} modules found")
        assertTrue(modules.size > 10)

        val org_modelix_ui_server = ModuleId("39aab22b-473f-4e44-b037-0c602964897d")
        val plan = generator.generatePlan(listOf(org_modelix_ui_server))
        for (chunk in plan.chunks) {
            println("--- Chunk ---")
            for (module in chunk.modules) {
                println("${module.moduleId} - ${module.name}")
            }
        }

        println(generator.generateXML())
    }

}