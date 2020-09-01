/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.persistent

abstract class CPNodeRef
internal constructor() {
    abstract val isGlobal: Boolean
    abstract val isLocal: Boolean
    abstract val elementId: Long
    abstract val treeId: String?

    private data class LocalRef(private val id: Long) : CPNodeRef() {
        override fun toString(): String {
            return "" + id.toString(16)
        }

        override val isGlobal: Boolean
            get() = false

        override val isLocal: Boolean
            get() = true

        override val elementId: Long
            get() = id

        override val treeId: String?
            get() {
                throw RuntimeException("Local reference")
            }
    }

    private data class GlobalRef(val treeId1: String, val elementId1: Long) : CPNodeRef() {
        override val treeId: String?
        override val elementId: Long
        override fun toString(): String {
            return "G$treeId#$elementId"
        }

        override val isGlobal: Boolean
            get() = true

        override val isLocal: Boolean
            get() = false

        init {
            treeId = treeId1
            elementId = elementId1
        }
    }

    data class ForeignRef(val serializedRef: String) : CPNodeRef() {

        override fun toString(): String {
            return "M$serializedRef"
        }

        override val isGlobal: Boolean
            get() = false

        override val isLocal: Boolean
            get() = false

        override val elementId: Long
            get() {
                throw RuntimeException("Foreign reference")
            }

        override val treeId: String?
            get() {
                throw RuntimeException("Foreign reference")
            }
    }

    companion object {
        fun local(elementId: Long): CPNodeRef {
            return LocalRef(elementId)
        }

        fun global(treeId: String, elementId: Long): CPNodeRef {
            return GlobalRef(treeId, elementId)
        }

        fun foreign(pointer: String): CPNodeRef {
            return ForeignRef(pointer)
        }

        fun fromString(str: String): CPNodeRef {
            return when {
                str[0] == 'G' -> {
                    val i = str.lastIndexOf("#")
                    global(str.substring(1, i), str.substring(i + 1).toLong())
                }
                str[0] == 'M' -> {
                    foreign(str.substring(1))
                }
                else -> {
                    local(str.toLong(16))
                }
            }
        }
    }
}
