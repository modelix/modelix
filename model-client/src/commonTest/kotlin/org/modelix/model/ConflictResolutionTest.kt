package org.modelix.model

import org.modelix.model.api.ITree
import org.modelix.model.api.ITreeChangeVisitor
import org.modelix.model.api.PBranch
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.operations.IAppliedOperation
import org.modelix.model.operations.OTBranch
import kotlin.test.Test
import kotlin.test.fail

class ConflictResolutionTest : TreeTestBase() {

    @Test
    fun randomTest01() {
        randomTest(30, 3, 50)
    }

    @Test
    fun randomTest02() {
        randomTest(10, 5, 10)
    }

    @Test
    fun randomTest03() {
        randomTest(10, 5, 20)
    }

    @Test
    fun randomTest04() {
        randomTest(0, 50, 3)
    }

    fun randomTest(baseChanges: Int, numBranches: Int, branchChanges: Int) {
        val merger = VersionMerger(storeCache, idGenerator)
        val baseExpectedTreeData = ExpectedTreeData()
        val baseBranch = OTBranch(PBranch(initialTree, idGenerator), idGenerator)
        logDebug({ "Random changes to base" }, ConflictResolutionTest::class)
        for (i in 0 until baseChanges) {
            applyRandomChange(baseBranch, baseExpectedTreeData)
        }
        val baseVersion = createVersion(baseBranch.operationsAndTree, null)

        val maxIndex = numBranches - 1
        val branches = (0..maxIndex).map { OTBranch(PBranch(baseVersion.tree, idGenerator), idGenerator) }.toList()
        val versions = branches.map { branch ->
            val expectedTreeData = baseExpectedTreeData.clone()
            logDebug({ "Random changes to branch" }, ConflictResolutionTest::class)
            for (i in 0 until branchChanges) {
                applyRandomChange(branch, expectedTreeData)
            }
            createVersion(branch.operationsAndTree, baseVersion)
        }.toList()
        val mergedVersions = ArrayList(versions)

        for (i in 0..maxIndex) for (i2 in 0..maxIndex) {
            if (i == i2) continue
            logDebug({ "Merge branch $i2 into $i" }, ConflictResolutionTest::class)
            mergedVersions[i] = merger.mergeChange(mergedVersions[i], mergedVersions[i2])
        }

        for (i in 1..maxIndex) {
            assertSameTree(mergedVersions[0].tree, mergedVersions[i].tree)
        }
    }

    @Test
    fun knownIssue01() {
        val merger = VersionMerger(storeCache, idGenerator)
        val baseBranch = OTBranch(PBranch(initialTree, idGenerator), idGenerator)

        baseBranch.runWrite {
            val t = baseBranch.writeTransaction
            t.addNewChild(ITree.ROOT_ID, "role1", 0, 0xe, null)
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x12, null)
        }

        val baseVersion = createVersion(baseBranch.operationsAndTree, null)

        val maxIndex = 1
        val branches = (0..maxIndex).map { OTBranch(PBranch(baseVersion.tree, idGenerator), idGenerator) }.toList()
        branches[0].runWrite {
            val t = branches[0].writeTransaction
            // role1: [e]   role2: [12]   role3: []
            t.moveChild(ITree.ROOT_ID, "role3", 0, 0xe)
            // role1: []   role2: [12]   role3: [e]
            t.deleteNode(0xe)
            // role1: []   role2: [12]   role3: []
        }
        branches[1].runWrite {
            val t = branches[1].writeTransaction
            // role1: [e]   role2: [12]
            t.moveChild(ITree.ROOT_ID, "role1", 1, 0x12)
            // role1: [e, 12]   role2: []
            t.deleteNode(0xe)
            // role1: [12]   role2: []
            t.deleteNode(0x12) // transforming this fails: Node at 1.role1[0] is expected to be 12, but was e
            // role1: []   role2: []
        }
        val versions = branches.map { branch ->
            createVersion(branch.operationsAndTree, baseVersion)
        }.toList()

        val mergedVersions = ArrayList(versions)

        for (i in 0..maxIndex) for (i2 in 0..maxIndex) {
            if (i == i2) continue
            logDebug({ "Merge branch $i2 into $i" }, ConflictResolutionTest::class)
            mergedVersions[i] = merger.mergeChange(mergedVersions[i], mergedVersions[i2])
        }

        for (i in 1..maxIndex) {
            assertSameTree(mergedVersions[0].tree, mergedVersions[i].tree)
        }
    }

    @Test
    fun knownIssue02() {
        val merger = VersionMerger(storeCache, idGenerator)
        val baseBranch = OTBranch(PBranch(initialTree, idGenerator), idGenerator)

        baseBranch.runWrite {
            val t = baseBranch.writeTransaction
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x3, null)
        }

        val baseVersion = createVersion(baseBranch.operationsAndTree, null)

        val maxIndex = 1
        val branches = (0..maxIndex).map { OTBranch(PBranch(baseVersion.tree, idGenerator), idGenerator) }.toList()
        branches[0].runWrite {
            val t = branches[0].writeTransaction
            t.deleteNode(0x3)
            //t.addNewChild(ITree.ROOT_ID, "role2", 0, 0xe, null)
            //t.moveChild(ITree.ROOT_ID, "role2", 1, 0xe)
            //t.deleteNode(0xe)
        }
        branches[1].runWrite {
            val t = branches[1].writeTransaction
            t.deleteNode(0x3)

            //t.addNewChild(ITree.ROOT_ID, "role3", 1, 0x13, null)
            //t.moveChild(ITree.ROOT_ID, "role2", 0, 0x13)
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x13, null)

            //t.addNewChild(ITree.ROOT_ID, "role5", 0, 0x17, null)
            //t.moveChild(ITree.ROOT_ID, "role2", 1, 0x17)
            //t.moveChild(ITree.ROOT_ID, "role1", 0, 0x17)
            //t.moveChild(ITree.ROOT_ID, "role6", 0, 0x17)
            t.deleteNode(0x13) // transforming this fails: Both operations delete 1.role2[0] but with different expected IDs ff00000013 and ff00000003
        }
        val versions = branches.map { branch ->
            createVersion(branch.operationsAndTree, baseVersion)
        }.toList()

        val mergedVersions = ArrayList(versions)

        for (i in 0..maxIndex) for (i2 in 0..maxIndex) {
            if (i == i2) continue
            logDebug({ "Merge branch $i2 into $i" }, ConflictResolutionTest::class)
            mergedVersions[i] = merger.mergeChange(mergedVersions[i], mergedVersions[i2])
        }

        for (i in 1..maxIndex) {
            assertSameTree(mergedVersions[0].tree, mergedVersions[i].tree)
        }
    }

    fun createVersion(opsAndTree: Pair<List<IAppliedOperation>, ITree>, previousVersion: CLVersion?): CLVersion {
        return CLVersion(
            idGenerator.generate(),
            null,
            null,
            (opsAndTree.second as CLTree).hash,
            previousVersion?.hash,
            opsAndTree.first.map { it.originalOp }.toTypedArray(),
            storeCache
        )
    }

    fun assertSameTree(tree1: ITree, tree2: ITree) {
        tree2.visitChanges(tree1, object : ITreeChangeVisitor {
            override fun containmentChanged(nodeId: Long) {
                fail("containmentChanged $nodeId")
            }

            override fun childrenChanged(nodeId: Long, role: String?) {
                fail("childrenChanged $nodeId, $role")
            }

            override fun referenceChanged(nodeId: Long, role: String) {
                fail("referenceChanged $nodeId, $role")
            }

            override fun propertyChanged(nodeId: Long, role: String) {
                fail("propertyChanged $nodeId, $role")
            }

            override fun nodeRemoved(nodeId: Long) {
                fail("nodeRemoved $nodeId")
            }

            override fun nodeAdded(nodeId: Long) {
                fail("nodeAdded nodeId")
            }

        })
    }

}