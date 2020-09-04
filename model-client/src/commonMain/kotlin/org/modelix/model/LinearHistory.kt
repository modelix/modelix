package org.modelix.model

import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore

class LinearHistory(private val storeCache: IDeserializingKeyValueStore, val baseVersionHash: String?) {

    val processed: MutableSet<String> = HashSet()
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
            val descendantVersions = paths[version.id]!!.flatten().associateBy { it.id }.values.filter { !it.isMerge() }
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
//        if (processed.contains(version.hash)) return
//        processed.add(version.hash)

        versions[version.id] = version
        paths.getOrPut(version.id, { ArrayList() }).add(path)
        val pathForParents = path + version

        if (version.isMerge()) {
            val version1 = getVersion(version.data!!.mergedVersion1!!)
            val version2 = getVersion(version.data!!.mergedVersion2!!)
            collect(version1, pathForParents)
            collect(version2, pathForParents)
        } else {
            val previous = version.baseVersion
            if (previous != null) {
                collect(previous, pathForParents)
            }
        }
    }

    private fun getVersion(hash: String): CLVersion {
        return CLVersion.loadFromHash(hash, storeCache) ?: throw RuntimeException("Version $hash not found")
    }
}
