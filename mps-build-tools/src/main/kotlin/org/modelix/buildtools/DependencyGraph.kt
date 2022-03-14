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

abstract class DependencyGraph<ElementT, KeyT> {

    private val module2node: MutableMap<KeyT, DependencyNode> = HashMap()

    abstract fun getKey(element: ElementT): KeyT
    abstract fun getDependencies(element: ElementT): Iterable<ElementT>

    fun getRoots() = getNodes().filter { it.isRoot() }

    fun getNode(moduleId: KeyT) = module2node[moduleId]?.getMergedNode()

    fun getNodes(): Set<DependencyNode> = module2node.values.map { it.getMergedNode() }.toSet()

    fun load(modules: Iterable<ElementT>) {
        modules.forEach { load(it) }
        postprocess()
    }

    private fun load(module: ElementT): DependencyNode {
        var node = getNode(getKey(module))
        if (node != null) return node

        node = DependencyNode()
        node.modules += module
        module2node[getKey(module)] = node

        for (dependency in getDependencies(module)) {
            node.addDependency(load(dependency))
        }

        return node
    }

    protected open fun postprocess() {
        mergeCycles()
    }

    protected open fun cycleBeforeMerge(cycle: Set<DependencyNode>) {}

    fun findCycles(): Set<Set<DependencyNode>> {
        val cycleFinder = CycleFinder()
        getNodes().forEach { cycleFinder.process(it) }
        return cycleFinder.cycles
    }

    fun mergeCycles(maxIterations: Int = 5) {
        for (i in 1..maxIterations) {
            val cycleFinder = CycleFinder()
            getNodes().forEach { cycleFinder.process(it) }

            if (cycleFinder.cycles.isEmpty()) break

            for (cycle in cycleFinder.cycles) {
                cycleBeforeMerge(cycle)
            }

            val cycles: Set<Set<DependencyNode>> = cycleFinder.cycles

            for (cycle in cycles) {
                val nodesToMerge: List<DependencyNode> = cycle.map { it.getMergedNode() }.distinct()
                if (nodesToMerge.size <= 1) continue
                for (mergeSource in nodesToMerge.drop(1)) {
                    mergeNodes(mergeSource, nodesToMerge.first())
                }
            }
        }

        // check post conditions
        module2node.forEach { require(it.value.isValid()) { "${it.key} is still pointing to a merged node" } }
        module2node.values.forEach { node ->
            node.getDependencies().forEach { dep ->
                require(dep.isValid()) { "$node is pointing to merged dependency $dep" }
            }
        }
        val cycleFinder2 = CycleFinder()
        getNodes().forEach { cycleFinder2.process(it) }
        cycleFinder2.cycles.forEach { require(false) { "Still contains cycles: $it" } }
        getNodes().flatMap { n -> n.modules.map { it to n } }.groupBy { it.first }.forEach {
            require(it.value.size == 1) { "${it.key} found in multiple nodes" }
        }
    }

    fun mergeElements(elements: Iterable<ElementT>): DependencyNode {
        return mergeNodes(elements.mapNotNull { getNode(getKey(it)) }.distinct())
    }

    fun mergeNodes(nodes: List<DependencyNode>): DependencyNode {
        val mergeTarget = nodes.first()
        for (mergeSource in nodes.drop(1)) {
            mergeNodes(mergeSource, mergeTarget)
        }
        return mergeTarget
    }

    fun mergeNodes(source: DependencyNode, target: DependencyNode) {
        if (source == target) {
            throw RuntimeException("Attempt to merge a node into itself")
        }
        if (!source.isValid()) throw RuntimeException("source is already merged")
        if (!target.isValid()) throw RuntimeException("target is already merged")
        source.mergedInto = target
        for (sourceModule in source.modules) {
            module2node[getKey(sourceModule)] = target
        }
        target.modules += source.modules
        source.modules.clear()

        val dependenciesToTransfer = source.getDependencies()
        val reverseDependenciesToTransfer = source.getReverseDependencies()

        for (dependency in dependenciesToTransfer) {
            source.removeDependency(dependency)
            target.addDependency(dependency)
        }

        for (reverseDependency in reverseDependenciesToTransfer) {
            reverseDependency.removeDependency(source)
            reverseDependency.addDependency(target)
        }
    }


    inner class DependencyNode {
        val modules: MutableSet<ElementT> = HashSet()
        private val dependencies: MutableSet<DependencyNode> = HashSet()
        private val reverseDependencies: MutableSet<DependencyNode> = HashSet()
        var mergedInto: DependencyNode? = null

        fun getContentKeys() = modules.map { getKey(it) }

        override fun toString(): String {
            if (modules.size == 1) return modules.first().toString()
            return "[" + modules.joinToString(", ") { it.toString() } + "]"
        }

        fun isValid() = mergedInto == null

        fun getMergedNode(): DependencyNode = mergedInto?.getMergedNode() ?: this

        fun addDependency(dependency: DependencyNode) {
            if (dependency == this) return
            dependencies += dependency
            dependency.reverseDependencies += this
        }

        fun removeDependency(dependency: DependencyNode) {
            if (dependencies.contains(dependency)) {
                dependencies -= dependency
                dependency.reverseDependencies -= this
            }
        }

        fun getDependencies() = HashSet(dependencies)

        fun getReverseDependencies() = HashSet(reverseDependencies)

        fun isRoot() = reverseDependencies.isEmpty()

        fun getTransitiveDependencies(result: MutableSet<DependencyNode> = HashSet()): Set<DependencyNode> {
            if (!result.contains(this)) {
                result += dependencies
                dependencies.forEach { it.getTransitiveDependencies(result) }
            }
            return result
        }
    }

    private inner class CycleFinder: CycleDetection<DependencyNode, DependencyNode>() {
        override fun getOutgoingEdges(element: DependencyNode): Iterable<DependencyNode> {
            val dependencies = element.getDependencies()
            for (dependency in dependencies) {
                require(dependency.isValid())
            }
            return dependencies
        }

        override fun getCategory(element: DependencyNode): DependencyNode {
            return element
        }
    }
}