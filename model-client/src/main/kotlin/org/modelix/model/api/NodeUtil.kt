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

import java.util.stream.Stream

object NodeUtil {
    fun getDescendants(node: INode, includeSelf: Boolean): Stream<INode?> {
        return if (includeSelf) {
            Stream.concat(Stream.of(node), getDescendants(node, false))
        } else {
            node.allChildren.flatMap { it: INode -> getDescendants(it, true) }
        }
    }

    fun getAncestor(_this: INode?, concept: IConcept?, includeSelf: Boolean): INode? {
        if (_this == null) {
            return null
        }
        return if (includeSelf && _this.concept!!.isSubconceptOf(concept)) {
            _this
        } else getAncestor(_this.parent, concept, true)
    }
}
