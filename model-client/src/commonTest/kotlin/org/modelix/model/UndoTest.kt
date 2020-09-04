package org.modelix.model

import org.modelix.model.api.ITree
import org.modelix.model.api.ITreeChangeVisitor
import org.modelix.model.api.PBranch
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.operations.IAppliedOperation
import org.modelix.model.operations.OTBranch
import org.modelix.model.persistent.MapBaseStore
import kotlin.random.Random
import kotlin.test.Test
import kotlin.test.fail

class UndoTest {

    @Test
    fun test() {
        val idGenerator = IdGenerator(7)
        val versionIdGenerator = IdGenerator(0)
        val store = ObjectStoreCache(MapBaseStore())
        val merger = VersionMerger(store, idGenerator)
        val baseBranch = OTBranch(PBranch(CLTree(store), idGenerator), idGenerator)
        val rand = Random(347663)

        randomChanges(baseBranch, 5, idGenerator, rand)
        val baseVersion = createVersion(baseBranch.operationsAndTree, null, versionIdGenerator, store)

        val maxIndex = 2
        val branches = (0..maxIndex).map { OTBranch(PBranch(baseVersion.tree, idGenerator), idGenerator) }.toList()
        for (i in 0..maxIndex) {
            branches[i].runWrite {
                randomChanges(branches[i], 5, idGenerator, rand)
            }
        }
        val versions = branches.map { branch ->
            createVersion(branch.operationsAndTree, baseVersion, versionIdGenerator, store)
        }.toList()

        val mergedVersions = ArrayList(versions)
        val version_0_1 = merger.mergeChange(mergedVersions[0], mergedVersions[1])
        val version_2_1 = merger.mergeChange(mergedVersions[2], mergedVersions[1])

        val version_1_1u = undo(versions[1], versionIdGenerator)
        version_1_1u.tree.visitChanges(baseVersion.tree, FailingVisitor())

        val version_0_1_1u = merger.mergeChange(version_0_1, version_1_1u)
        val version_2_1_1u = merger.mergeChange(version_2_1, version_1_1u)
        printHistory(version_1_1u)
        println("---")
        printHistory(versions[2])
        println("---")
        printHistory(version_2_1_1u)
        version_0_1_1u.tree.visitChanges(versions[0].tree, FailingVisitor())
        version_2_1_1u.tree.visitChanges(versions[2].tree, FailingVisitor())
    }

    fun printHistory(version: CLVersion) {
        println("Version ${version.id.toString(16)} ${version.hash} ${version.data?.originalVersion}")
        for (op in version.operations) {
            println("    $op")
        }
        version.baseVersion?.let { printHistory(it) }
    }

    fun undo(version: CLVersion, idGenerator: IdGenerator): CLVersion {
        val ops = version.operations.toList()
        val baseVersion = version.baseVersion!!
        val replayBranch = PBranch(baseVersion.tree, IdGenerator(0))
        val appliedOps = replayBranch.computeWrite {
            val t = replayBranch.writeTransaction
            ops.map { it.apply(t) }
        }
        val invertedOps = appliedOps.reversed().flatMap { it.invert() }
        val undoBranch = OTBranch(PBranch(version.tree, idGenerator), idGenerator)
        undoBranch.runWrite {
            val t = undoBranch.writeTransaction
            invertedOps.map { it.apply(t) }
        }
        return createVersion(undoBranch.operationsAndTree, version, idGenerator, version.store)
    }

    private fun randomChanges(baseBranch: OTBranch, numChanges: Int, idGenerator: IdGenerator, rand: Random) {
        baseBranch.runWrite {
            val changeGenerator = RandomTreeChangeGenerator(idGenerator, rand).growingOperationsOnly()
            for (i in 0 until numChanges) {
                changeGenerator.applyRandomChange(baseBranch, null)
            }
        }
    }

    fun createVersion(
        opsAndTree: Pair<List<IAppliedOperation>, ITree>,
        previousVersion: CLVersion?,
        idGenerator: IdGenerator,
        storeCache: IDeserializingKeyValueStore
    ): CLVersion {
        return CLVersion.createRegularVersion(
            id = idGenerator.generate(),
            time = null,
            author = null,
            treeHash = (opsAndTree.second as CLTree).hash,
            baseVersion = previousVersion?.hash,
            operations = opsAndTree.first.map { it.getOriginalOp() }.toTypedArray(),
            store = storeCache
        )
    }
}

class FailingVisitor : ITreeChangeVisitor {
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
