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

package org.modelix.model.lazy

import org.modelix.model.randomUUID
import kotlin.jvm.JvmStatic

class TreeId(val id: String) {

    @get:Deprecated("")
    val masterBranchKey: String
        get() = getBranchKey(null)

    fun getBranchKey(branchName: String?): String {
        var branchName = branchName
        if (branchName == null || branchName.length == 0) {
            branchName = "master"
        }
        return "branch_" + id + "_" + branchName
    }

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || this::class != o::class) {
            return false
        }
        val that = o as TreeId
        return if (if (id != null) id as Any != that.id else that.id != null) {
            false
        } else true
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + (id?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return id
    }

    companion object {
        @JvmStatic
        fun random(): TreeId {
            return TreeId(randomUUID())
        }
    }
}
