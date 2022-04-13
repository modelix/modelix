package org.modelix.gitui

import org.apache.commons.codec.digest.DigestUtils
import org.eclipse.jgit.api.Git
import org.eclipse.jgit.lib.Ref
import org.eclipse.jgit.revwalk.RevCommit
import java.io.File

class GitRepository(val folder: File) {
    val id = DigestUtils.sha1Hex(folder.absolutePath)
    val name: String
        get() = folder.name
    private val git by lazy { Git.open(folder) }

    fun history(): List<RevCommit> {
        return git.log().setSkip(0).setMaxCount(20).call().toList()
    }

    fun branches(): List<Branch> {
        return git.branchList().call().map { Branch(it) }
    }

    inner class Branch(val ref: Ref) {
        val shortName: String
            get() = ref.name.removePrefix("refs/heads/")
        val commitHash: String
            get() = ref.objectId.name
    }
}