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

class DependencyGraph(val moduleResolver: ModuleResolver) {

    private val module2node: MutableMap<ModuleId, DependencyNode> = HashMap()

    fun getRoots() = module2node.values.filter { it.isRoot() }

    fun load(modules: Iterable<FoundModule>) {
        modules.forEach { load(it) }
        postprocess()
    }

    private fun load(module: FoundModule): DependencyNode {
        var node = module2node[module.moduleId]
        if (node != null) return node

        node = DependencyNode()
        node.modules += module
        module2node[module.moduleId] = node

        for (dependency in module.dependencies) {
            val dependencyModule = moduleResolver.resolveModule(dependency, module)
            if (dependencyModule != null) {
                node.addDependency(load(dependencyModule))
            }
        }

        return node
    }

    private fun postprocess() {
        mergeGeneratorsAndLanguages()
        mergeCycles()
    }

    private fun mergeGeneratorsAndLanguages() {
        val moduleOwners = moduleResolver.availableModules.getModules().values.map { it.owner }.filterIsInstance<SourceModuleOwner>().filter { it.modules.size > 1 }
        for (moduleOwner in moduleOwners) {
            val nodesToMerge = moduleOwner.modules.keys.mapNotNull { module2node[it] }.distinct()
            if (nodesToMerge.size < 2) continue
            for (source in nodesToMerge.drop(1)) {
                mergeNodes(source, nodesToMerge.first())
            }
        }
    }

    private fun mergeCycles() {
        val cycleFinder = CycleFinder()
        module2node.values.forEach { cycleFinder.process(it) }
        for (cycle in cycleFinder.cycles) {
            val nodesToMerge = cycle.map { it.getMergedNode() }.distinct()
            if (nodesToMerge.size <= 1) continue
            for (mergeSource in nodesToMerge.drop(1)) {
                mergeNodes(mergeSource, nodesToMerge.first())
            }
        }
    }

    private fun mergeNodes(source: DependencyNode, target: DependencyNode) {
        if (source == target) {
            throw RuntimeException("Attempt to merge a node into itself")
        }
        source.mergedInto = target
        for (sourceModule in source.modules) {
            module2node[sourceModule.moduleId] = target
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
        val modules: MutableSet<FoundModule> = HashSet()
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
    }

    private inner class CycleFinder {
        val processed = HashSet<DependencyNode>()
        val cycles: MutableList<List<DependencyNode>> = ArrayList()
        val currentStack = ArrayList<DependencyNode>()

        fun process(node: DependencyNode) {
            val index = currentStack.indexOf(node)
            if (index != -1) {
                cycles += currentStack.drop(index)
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