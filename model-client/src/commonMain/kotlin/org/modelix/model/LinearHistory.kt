package org.modelix.model

import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.lazy.NonWrittenEntriesStore

class LinearHistory(val baseVersionHash: String?) {

    val paths: MutableMap<Long, MutableList<List<CLVersion>>> = HashMap()
    val versions: MutableMap<Long, CLVersion> = HashMap()

    /**
     * Oldest version first
     */
    fun load(vararg fromVersions: CLVersion): List<CLVersion> {
        for (fromVersion in fromVersions) {
            collect(fromVersion, emptyList())
        }

        var result: List<CLVersion> = ArrayList()

        for (version in versions.values.filter { !it.isMerge() }.sortedBy { it.id }) {
            val descendantVersions = paths[version.id]!!.flatten().associateBy { it.id }.values
                .filter { !it.isMerge() }.sortedBy { it.id }
            val descendantIds = descendantVersions.map { it.id }.toHashSet()
            val idsInResult = result.map { it.id }.toHashSet()
            if (idsInResult.contains(version.id)) {
                result =
                    result +
                    descendantVersions.filter { !idsInResult.contains(it.id) }
            } else {
                result =
                    result.filter { !descendantIds.contains(it.id) } +
                    version +
                    result.filter { descendantIds.contains(it.id) } +
                    descendantVersions.filter { !idsInResult.contains(it.id) }
            }
        }
        return result
    }

    private fun collect(version: CLVersion, path: List<CLVersion>) {
        if (version.hash == baseVersionHash) return

        versions[version.id] = version
        paths.getOrPut(version.id, { ArrayList() }).add(path)
        val pathForParents = path + version

        if (version.isMerge()) {
            val version1 = getVersion(version.data!!.mergedVersion1!!, version.store)
            val version2 = getVersion(version.data!!.mergedVersion2!!, version.store)
            collect(version1, pathForParents)
            collect(version2, pathForParents)
        } else {
            val previous = version.baseVersion
            if (previous != null) {
                collect(previous, pathForParents)
            }
        }
    }

    private fun getVersion(hash: String, store: NonWrittenEntriesStore): CLVersion {
        return CLVersion.loadFromHash(hash, store)
    }
}
