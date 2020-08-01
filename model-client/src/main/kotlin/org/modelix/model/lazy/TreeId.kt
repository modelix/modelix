package org.modelix.model.lazy

import java.util.*

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
        if (o == null || this.javaClass != o.javaClass) {
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
            return TreeId(UUID.randomUUID().toString())
        }
    }

}