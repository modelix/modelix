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

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

class DependencyGraphTest {

    @Test
    fun cyclesTest1() {
        runTest(listOf(
            Element("a1", "a2"),
            Element("a2", "a3"),
            Element("a3", "a1"),

            Element("b1", "b2"),
            Element("b2", "b3"),
            Element("b3", "b1"),
        ), setOf(
            setOf("a1", "a2", "a3"),
            setOf("b1", "b2", "b3")
        ))
    }

    @Test
    fun treeOfCycles() {
        runTest(listOf(
            Element("a1", "a2"),
            Element("a2", "a3"),
            Element("a3", "a1", "b1"),

            Element("b1", "b2"),
            Element("b2", "b3"),
            Element("b3", "b1"),

            Element("c1", "c2"),
            Element("c2", "c3"),
            Element("c3", "c1", "b2"),
        ), setOf(
            setOf("a1", "a2", "a3"),
            setOf("c1", "c2", "c3"),
            setOf("b1", "b2", "b3")
        ))
    }

    @Test
    fun cycleOfCycles() {
        runTest(listOf(
            Element("a1", "a2"),
            Element("a2", "a3"),
            Element("a3", "a1", "b1"),

            Element("b1", "b2"),
            Element("b2", "b3"),
            Element("b3", "b1", "c1"),

            Element("c1", "c2"),
            Element("c2", "c3"),
            Element("c3", "c1", "a1"),
        ), setOf(
            setOf("a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3")
        ))
    }

    @Test
    fun cyclesTest4() {
        runTest(listOf(
            Element("a1", "a2"),
            Element("a2", "a3"),
            Element("a3", "a1", "b"),

            Element("b", "c1"),

            Element("c1", "c2"),
            Element("c2", "c3"),
            Element("c3", "c1"),
        ), setOf(
            setOf("a1", "a2", "a3"),
            setOf("c1", "c2", "c3"),
            setOf("b")
        ))
    }

    private fun runTest(elements: List<Element>, expected: Set<Set<String>>) {
        val graph = object : DependencyGraph<Element, String>() {
            override fun getKey(element: Element) = element.id
            override fun getDependencies(element: Element): Iterable<Element> {
                return element.deps.map { dep -> elements.find { it.id == dep }!! }
            }
        }

        graph.load(elements)
        graph.mergeCycles(1)

        assertEquals(expected, graph.getNodes().map { it.getContentKeys().toSet() }.toSet())
    }

    class Element(val id: String, vararg val deps: String)
}