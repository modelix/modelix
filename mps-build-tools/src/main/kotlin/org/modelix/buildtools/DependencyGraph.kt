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

    fun getRoots() = module2node.values.filter { it.isRoot() }

    fun getNode(moduleId: KeyT) = module2node[moduleId]

    fun getNodes(): Set<DependencyNode> = module2node.values.map { it.getMergedNode() }.toSet()

    fun load(modules: Iterable<ElementT>) {
        modules.forEach { load(it) }
        postprocess()
    }

    private fun load(module: ElementT): DependencyNode {
        var node = module2node[getKey(module)]
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

    fun mergeCycles() {
        val cycleFinder = CycleFinder()
        module2node.values.forEach { cycleFinder.process(it) }

        for (cycle in cycleFinder.cycles) {
            cycleBeforeMerge(cycle)
        }

        val cycles: List<List<ElementT>> = cycleFinder.cycles.map { it.flatMap { it.modules } }

        for (cycle in cycles) {
            val nodesToMerge: List<DependencyNode> = cycle.mapNotNull { getNode(getKey(it)) }.distinct()
            if (nodesToMerge.size <= 1) continue
            for (mergeSource in nodesToMerge.drop(1)) {
                mergeNodes(mergeSource, nodesToMerge.first())
            }
        }
    }

    protected fun mergeNodes(source: DependencyNode, target: DependencyNode) {
        if (source == target) {
            throw RuntimeException("Attempt to merge a node into itself")
        }
        source.mergedInto = target
        for (sourceModule in source.modules) {
            module2node[getKey(sourceModule)] = target
        }
        target.modules += source.modules
        source.modules.clear()

        for (dependency in source.getDependencies()) {
            source.removeDependency(dependency)
            target.addDependency(dependency)
        }

        for (reverseDependency in source.getReverseDependencies()) {
            reverseDependency.removeDependency(source)
            reverseDependency.addDependency(target)
        }
    }


    inner class DependencyNode {
        val modules: MutableSet<ElementT> = HashSet()
        private val dependencies: MutableSet<DependencyNode> = HashSet()
        private val reverseDependencies: MutableSet<DependencyNode> = HashSet()
        var mergedInto: DependencyNode? = null

        override fun toString(): String {
            return modules.joinToString(", ") { it.toString() }
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

    private inner class CycleFinder {
        val processed = HashSet<DependencyNode>()
        val cycles: LinkedHashSet<LinkedHashSet<DependencyNode>> = LinkedHashSet()
        val currentStack = ArrayList<DependencyNode>()

        fun process(node: DependencyNode) {
            val index = currentStack.indexOf(node)
            if (index != -1) {
                cycles += LinkedHashSet(currentStack.drop(index))
            }

            if (processed.contains(node)) return
            processed += node

            try {
                currentStack += node
                for (dependency in node.getDependencies()) {
                    process(dependency)
                }
            } finally {
                currentStack.removeLast()
            }
        }
    }
}