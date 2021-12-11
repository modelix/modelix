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
package org.modelix.model

import org.modelix.model.api.ITreeChangeVisitorEx
import kotlin.test.fail

class FailingVisitor : ITreeChangeVisitorEx {
    override fun containmentChanged(nodeId: Long) {
        fail("Tree expected to be the same")
    }

    override fun childrenChanged(nodeId: Long, role: String?) {
        fail("Tree expected to be the same")
    }

    override fun referenceChanged(nodeId: Long, role: String) {
        fail("Tree expected to be the same")
    }

    override fun propertyChanged(nodeId: Long, role: String) {
        fail("Tree expected to be the same")
    }

    override fun nodeRemoved(nodeId: Long) {
        fail("Tree expected to be the same")
    }

    override fun nodeAdded(nodeId: Long) {
        fail("Tree expected to be the same")
    }
}