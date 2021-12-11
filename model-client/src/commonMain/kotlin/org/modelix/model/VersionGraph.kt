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

import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore

/**
 * Relations between versions are store unidirectional. A newer version knows its previous version, but an older version
 * doesn't know the newer version(s). This class provides the bidirectional navigation between versions.
 */
class VersionGraph(val store: IDeserializingKeyValueStore) {

    private val loadedVersions = HashSet<String>()
    private val futureVersions = HashMap<String, MutableSet<String>>()

    private fun getVersion(hash: String) = CLVersion.loadFromHash(hash, store)

    private fun loadVersion(version: CLVersion): Boolean {
        if (loadedVersions.contains(version.hash)) return true
        loadedVersions.add(version.hash)
        if (version.isMerge()) {
            futureVersions.getOrPut(version.getMergedVersion1()!!.hash) { HashSet() }.add(version.hash)
            futureVersions.getOrPut(version.getMergedVersion2()!!.hash) { HashSet() }.add(version.hash)
        } else {
            val baseVersion = version.baseVersion ?: return false
            futureVersions.getOrPut(baseVersion.hash) { HashSet() }.add(version.hash)
        }
        return true
    }

    private fun loadUntil(start: CLVersion, stop: CLVersion) {
        var current = start
        while (!loadedVersions.contains(stop.hash)) {
            loadVersion(current)
            if (current.isMerge()) {
                loadAllBranches(current, current.baseVersion!!)
            }
            current = current.baseVersion ?: break
        }
    }

    private fun loadAllBranches(head: CLVersion, base: CLVersion) {
        var current = head
        while (current.hash != base.hash) {
            loadVersion(current)
            if (current.isMerge()) {
                loadAllBranches(current.getMergedVersion1()!!, current.baseVersion!!)
                loadAllBranches(current.getMergedVersion2()!!, current.baseVersion!!)
            }
            current = current.baseVersion ?: break
        }
    }

    fun pathsTo(newerVersion: CLVersion, olderVersion: CLVersion): List<List<CLVersion>> {
        loadUntil(newerVersion, olderVersion)

        val paths = mutableListOf(mutableListOf(olderVersion))
        collectPaths(paths, newerVersion);
        return paths.filter { it.last().hash == newerVersion.hash }
    }

    private fun collectPaths(paths: MutableList<MutableList<CLVersion>>, end: CLVersion) {
        var allDone = false
        while (!allDone) {
            allDone = true

            var additionalPaths: MutableList<MutableList<CLVersion>> = mutableListOf()
            for (path in paths) {
                if (path.last().hash == end.hash) continue
                val nextPathElements: Set<String> = futureVersions[path.last().hash] ?: continue
                if (nextPathElements.isEmpty()) continue
                allDone = false
                nextPathElements.map { getVersion(it) }.first()
                path.add(nextPathElements.map { getVersion(it) }.first())
                if (nextPathElements.size > 1) {
                    val map: List<MutableList<CLVersion>> = nextPathElements.drop(1).map {
                        val pathCopy = ArrayList(path)
                        pathCopy.add(getVersion(it))
                        pathCopy
                    }
                    additionalPaths.addAll(map)
                }
            }
            paths += additionalPaths
        }
    }

    /**
     * Path of versions with actually applied operations.
     * In case of a merge commit the next version in the path is the common base, because the merge contains all
     * operations of the two branches after conflict resolution.
     * But if 'olderVersion' is part of only one branch of a merge, the path itself is included and the merge ignored.
     */
    fun findPath(newerVersion: CLVersion, olderVersionExclusive: CLVersion): List<CLVersion>? {
        val path = ArrayList<CLVersion>()
        var current = newerVersion

        while (true) {
            if (current.hash == olderVersionExclusive.hash) return path

            if (current.isMerge()) {
                if (containsVersion(olderVersionExclusive, current.getMergedVersion1()!!, current.baseVersion!!)) {
                    path += findPath(current.getMergedVersion1()!!, olderVersionExclusive) ?: throw RuntimeException()
                    return path
                } else if (containsVersion(olderVersionExclusive, current.getMergedVersion2()!!, current.baseVersion!!)) {
                    path += findPath(current.getMergedVersion2()!!, olderVersionExclusive) ?: throw RuntimeException()
                    return path
                }
            }
            path += current
            current = current.baseVersion ?: break
        }

        return null
    }

    private fun containsVersion(versionToFind: CLVersion, rangeNewest: CLVersion, rangeOldestExclusive: CLVersion): Boolean {
        var current = rangeNewest
        while (current.hash != rangeOldestExclusive.hash) {
            if (current.hash == versionToFind.hash) {
                return true
            }
            val base = current.baseVersion ?: break
            if (current.isMerge()) {
                if (containsVersion(versionToFind, current.getMergedVersion1()!!, base)) return true
                if (containsVersion(versionToFind, current.getMergedVersion2()!!, base)) return true
            }
            current = base
        }
        return false
    }
}