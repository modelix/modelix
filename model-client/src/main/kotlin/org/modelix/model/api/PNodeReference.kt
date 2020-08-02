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

package org.modelix.model.api

class PNodeReference(val id: Long) : INodeReference {

    override fun resolveNode(context: INodeResolveContext?): INode? {
        return if (context is PNodeResolveContext) {
            PNodeAdapter(id, context.branch)
        } else {
            context!!.resolve(this)
        }
    }

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || this.javaClass != o.javaClass) {
            return false
        }
        val that = o as PNodeReference
        return if (id != that.id) {
            false
        } else true
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + (id xor (id shr 32)).toInt()
        return result
    }

    override fun toString(): String {
        return "PNodeReference{id=$id}"
    }
}
