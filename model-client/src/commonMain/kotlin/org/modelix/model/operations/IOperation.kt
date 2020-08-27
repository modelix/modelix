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

package org.modelix.model.operations

import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction

interface IOperation {
    fun apply(transaction: IWriteTransaction): IAppliedOperation
    fun captureIntend(tree: ITree): IOperationIntend

    /**
     * The 'previous' operation is the one that is inserted before this operation
     * in the history of operations applied to the model.
     * 'this' operation was created for a version that doesn't have 'previous' applied and now
     * 'this' needs to be replaced with an operation that applies the same intended change
     * on a model that was modified by 'previous' in the mean time.
     */
    fun transform(previous: IOperation, context: ConcurrentOperations): List<IOperation>

    fun loadAdjustment(indexAdjustments: IndexAdjustments)
    fun loadKnownData(indexAdjustments: IndexAdjustments)

    fun withAdjustedPosition(indexAdjustments: IndexAdjustments): IOperation
    fun withAdjustedPositions(adjustment: IndexAdjustment): IOperation
    fun withAdjustedNodeLocation(nodeId: Long, position: PositionInRole): IOperation

    fun toCode(): String
}
