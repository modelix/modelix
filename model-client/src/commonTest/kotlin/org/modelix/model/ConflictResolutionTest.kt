package org.modelix.model

import org.modelix.model.api.ITree
import org.modelix.model.api.ITreeChangeVisitor
import org.modelix.model.api.IWriteTransaction
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
        randomTest(100, 5, 100)
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
        val versions = branches.mapIndexed { index, branch ->
            val expectedTreeData = baseExpectedTreeData.clone()
            logDebug({ "Random changes to branch $index" }, ConflictResolutionTest::class)
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

    fun knownIssueTest(baseChanges: (IWriteTransaction) -> Unit, vararg branchChanges: (IWriteTransaction) -> Unit) {
        val merger = VersionMerger(storeCache, idGenerator)
        val baseBranch = OTBranch(PBranch(initialTree, idGenerator), idGenerator)

        baseBranch.runWrite {
            logDebug({ "Changes to base branch" }, ConflictResolutionTest::class)
            baseChanges(baseBranch.writeTransaction)
        }

        val baseVersion = createVersion(baseBranch.operationsAndTree, null)

        val maxIndex = branchChanges.size - 1
        val branches = (0..maxIndex).map { OTBranch(PBranch(baseVersion.tree, idGenerator), idGenerator) }.toList()
        for (i in 0..maxIndex) {
            branches[i].runWrite {
                logDebug({ "Changes to branch $i" }, ConflictResolutionTest::class)
                branchChanges[i](branches[i].writeTransaction)
            }
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
    fun knownIssue01() {
        knownIssueTest({ t ->
            t.addNewChild(ITree.ROOT_ID, "role1", 0, 0xe, null)
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x12, null)
        }, { t ->
            t.moveChild(ITree.ROOT_ID, "role3", 0, 0xe)
            t.deleteNode(0xe)
        }, { t ->
            t.moveChild(ITree.ROOT_ID, "role1", 1, 0x12)
            t.deleteNode(0xe)
            t.deleteNode(0x12)
        })
    }

    @Test
    fun knownIssue02() {
        knownIssueTest({ t ->
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x3, null)
        }, { t ->
            t.deleteNode(0x3)
        }, { t ->
            t.deleteNode(0x3)
            t.addNewChild(ITree.ROOT_ID, "role2", 0, 0x13, null)
            t.deleteNode(0x13)
        })
    }

    @Test
    fun knownIssue03() {
        knownIssueTest({ t ->
        }, { t ->
            t.addNewChild(1, "role2", 0, 0xff00000007, null)
            t.deleteNode(0xff00000007)
        }, { t ->
            t.addNewChild(1, "role2", 0, 0xff0000000a, null)
            t.deleteNode(0xff0000000a)
        }, { t ->
            t.addNewChild(1, "role2", 0, 0xff0000000e, null)
            t.deleteNode(0xff0000000e)
        })
    }

    @Test
    fun knownIssue04() {
        knownIssueTest({ t ->
        }, { t ->
            t.addNewChild(1, "role3", 0, 0xff00000006, null)
            t.addNewChild(0xff00000006, "role3", 0, 0xff00000008, null)
            t.moveChild(1, "role1", 0, 0xff00000006)
        }, { t ->
            t.addNewChild(1, "role3", 0, 0xff0000000e, null)
        })
    }

    @Test
    fun knownIssue05() {
        knownIssueTest({ t ->
        }, { t -> // 0
        }, { t -> // 1
        }, { t -> // 2
            t.addNewChild(0x1, "role3", 0, 0xff0000000f, null)
        }, { t -> // 3
            t.addNewChild(0x1, "role3", 0, 0xff00000011, null)
            t.deleteNode(0xff00000011)
        })
    }

    @Test
    fun knownIssue06() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff0000000e, null)
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
            t.addNewChild(0xff00000011, "role1", 0, 0xff00000010, null)
        }, { t -> // 0
            t.moveChild(0x1, "role1", 0, 0xff00000010)
            t.deleteNode(0xff00000010)
        }, { t -> // 1
            t.deleteNode(0xff0000000e)
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.deleteNode(0xff00000010)
            t.moveChild(0x1, "role1", 0, 0xff00000011)
        })
        // 1.role1[0] expected to be ff00000011, but was ff00000010
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