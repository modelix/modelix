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
package org.modelix.workspace.build

class GenerationPlan {
    val chunks: MutableList<GenerationChunk> = ArrayList()

    fun getHighestChunkIndex(moduleIds: Iterable<ModuleId>): Int {
        for (i in (0 until chunks.size).reversed()) {
            if (moduleIds.intersect(chunks[i].modules.map { it.moduleId }.toSet()).isNotEmpty()) {
                return i
            }
        }
        return -1
    }

    fun insertAt(chunkIndex: Int, module: FoundModule) {
        while (chunks.size <= chunkIndex) chunks += GenerationChunk()
        chunks[chunkIndex].modules += module
    }
}