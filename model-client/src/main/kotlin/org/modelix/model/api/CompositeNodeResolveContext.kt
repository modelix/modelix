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

import java.util.Objects

class CompositeNodeResolveContext(contexts: Iterable<INodeResolveContext>) : INodeResolveContext {
    private val contexts: List<INodeResolveContext?>

    constructor(vararg contexts: INodeResolveContext) : this(contexts.toList()) {}

    override fun resolve(ref: INodeReference?): INode? {
        return contexts.stream().map { it?.resolve(ref) }.filter { obj: INode? -> Objects.nonNull(obj) }.findFirst().orElse(null)
    }

    companion object {
        fun withAdditionalContext(context: INodeResolveContext, runnable: Runnable?) {
            val activeContext = INodeResolveContext.CONTEXT_VALUE.getValue()
            if (activeContext == null) {
                INodeResolveContext.CONTEXT_VALUE.runWith(context, runnable!!)
            } else {
                INodeResolveContext.CONTEXT_VALUE.runWith(CompositeNodeResolveContext(context, activeContext), runnable!!)
            }
        }
    }

    init {
        this.contexts = contexts.toList()
    }
}
