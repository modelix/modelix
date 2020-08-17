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

    @Test
    fun knownIssue07() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff0000000e, null)
            t.addNewChild(0xff0000000e, "role3", 0, 0xff00000010, null)
            t.addNewChild(0xff00000010, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.deleteNode(0xff00000011)
        }, { t -> // 1
            t.moveChild(0x1, "role2", 0, 0xff00000011)
            t.addNewChild(0x1, "role2", 0, 0xff00000032, null)
        })
        // Attempt to access a deleted location: 1
    }

    @Test
    fun knownIssue08() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff0000000e, null)
            t.addNewChild(0x1, "role5", 0, 0xff00000010, null)
            t.addNewChild(0xff00000010, "role2", 0, 0xff00000011, null)
            t.addNewChild(0xff00000010, "role1", 0, 0xff00000012, null)
        }, { t -> // 0
            t.moveChild(0xff00000012, "role2", 0, 0xff0000000e)
        }, { t -> // 1
            t.moveChild(0x1, "role1", 0, 0xff00000011)
        })
        // Attempt to access a deleted location: 0
    }

    @Test
    fun knownIssue09a() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff0000000e, null)
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.moveChild(0x1, "role6", 0, 0xff0000000e)
        }, { t -> // 1
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.deleteNode(0xff00000011)
        })
    }

    @Test
    fun knownIssue09b() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff0000000e, null)
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.moveChild(0x1, "role6", 0, 0xff0000000e)
        }, { t -> // 1
            t.moveChild(0x1, "role1", 1, 0xff00000011)
            t.deleteNode(0xff00000011)
        })
    }

    @Test
    fun knownIssue09c() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff000000aa, null)
            t.addNewChild(0x1, "role1", 1, 0xff0000000e, null)
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.moveChild(0x1, "role6", 0, 0xff0000000e)
        }, { t -> // 1
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.deleteNode(0xff00000011)
        })
    }

    @Test
    fun knownIssue10() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff00000010, null)
        }, { t -> // 0
            t.deleteNode(0xff00000010)
        }, { t -> // 1
            t.addNewChild(0xff00000010, "role1", 0, 0xff0000002b, null)
            t.deleteNode(0xff0000002b)
        })
    }

    @Test
    fun knownIssue11() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.deleteNode(0xff00000011)
        }, { t -> // 1
            t.addNewChild(0xff00000011, "role2", 0, 0xff0000002e, null)
            t.moveChild(0x1, "role3", 0, 0xff0000002e)
        }, { t -> // 2
            t.addNewChild(0xff00000011, "role3", 0, 0xff00000043, null)
        })
    }

    @Test
    fun knownIssue12() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role1", 0, 0xff00000012, null)
            t.addNewChild(0x1, "role3", 0, 0xff0000000e, null)
        }, { t -> // 0
            t.deleteNode(0xff00000012)
            t.deleteNode(0xff0000000e)
        }, { t -> // 1
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000043, null)
            t.addNewChild(0xff0000000e, "role3", 0, 0xff00000044, null)
            t.deleteNode(0xff00000043)
        })
    }

    @Test
    fun knownIssue13() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role4", 0, 0xff00000012, null)
        }, { t -> // 0
            t.deleteNode(0xff00000012)
        }, { t -> // 1
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000043, null)
            t.addNewChild(0x1, "role5", 0, 0xff00000044, null)
            t.moveChild(0xff00000012, "role5", 0, 0xff00000044)
            t.deleteNode(0xff00000043)
            t.deleteNode(0xff00000044)
        })
    }

    @Test
    fun knownIssue14() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role2", 0, 0xff00000011, null)
        }, { t -> // 0
            t.deleteNode(0xff00000011)
        }, { t -> // 1
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.addNewChild(0x1, "role1", 1, 0xff0000002d, null)
        })
    }

    @Test
    fun knownIssue15() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role5", 0, 0xff00000012, null)
        }, { t -> // 0
            t.deleteNode(0xff00000012)
        }, { t -> // 1
            t.addNewChild(0xff00000012, "role1", 0, 0xff00000043, null)
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000045, null)
            t.deleteNode(0xff00000045)
            t.deleteNode(0xff00000043)
        })
    }

    @Test
    fun knownIssue16() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role3", 0, 0xff0000000e, null)
            t.addNewChild(0xff0000000e, "role3", 0, 0xff00000010, null)
            t.addNewChild(0xff00000010, "role3", 0, 0xff00000011, null)
            t.addNewChild(0xff00000010, "role3", 0, 0xff00000012, null)
            t.moveChild(0x1, "role2", 0, 0xff00000011)
        }, { t -> // 0
            t.deleteNode(0xff00000012)
            t.addNewChild(0x1, "role2", 1, 0xff0000001c, null)
            t.addNewChild(0xff0000001c, "role2", 0, 0xff00000022, null)
            t.deleteNode(0xff00000010)
            t.deleteNode(0xff0000000e)
            t.addNewChild(0xff00000022, "role3", 0, 0xff00000023, null)
        }, { t -> // 1
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000043, null)
            t.addNewChild(0xff00000043, "role3", 0, 0xff00000044, null)
            t.moveChild(0xff0000000e, "role3", 0, 0xff00000044)
            t.deleteNode(0xff00000043)
        })
    }

    @Test
    fun knownIssue17() {
        knownIssueTest({ t ->
            t.addNewChild(0x1, "role2", 0, 0xff00000001, null)
            t.moveChild(0x1, "role2", 1, 0xff00000001)
            t.deleteNode(0xff00000001)
            t.addNewChild(0x1, "role2", 0, 0xff00000002, null)
            t.deleteNode(0xff00000002)
            t.addNewChild(0x1, "role2", 0, 0xff00000003, null)
            t.deleteNode(0xff00000003)
            t.addNewChild(0x1, "role3", 0, 0xff00000004, null)
            t.addNewChild(0x1, "role3", 1, 0xff00000005, null)
            t.addNewChild(0xff00000004, "role3", 0, 0xff00000006, null)
            t.moveChild(0xff00000004, "role2", 0, 0xff00000006)
            t.addNewChild(0xff00000005, "role3", 0, 0xff00000007, null)
            t.deleteNode(0xff00000007)
            t.deleteNode(0xff00000005)
            t.deleteNode(0xff00000006)
            t.addNewChild(0x1, "role1", 0, 0xff00000008, null)
            t.moveChild(0xff00000004, "role2", 0, 0xff00000008)
            t.addNewChild(0xff00000004, "role1", 0, 0xff00000009, null)
            t.deleteNode(0xff00000009)
            t.moveChild(0x1, "role1", 0, 0xff00000004)
            t.addNewChild(0xff00000004, "role2", 1, 0xff0000000a, null)
            t.moveChild(0xff00000004, "role2", 2, 0xff0000000a)
            t.deleteNode(0xff00000008)
            t.deleteNode(0xff0000000a)
            t.addNewChild(0xff00000004, "role3", 0, 0xff0000000b, null)
            t.addNewChild(0x1, "role1", 1, 0xff0000000c, null)
            t.deleteNode(0xff0000000b)
            t.addNewChild(0x1, "role2", 0, 0xff0000000d, null)
            t.moveChild(0x1, "role2", 1, 0xff0000000d)
            t.moveChild(0xff0000000c, "role3", 0, 0xff00000004)
            t.moveChild(0xff0000000c, "role2", 0, 0xff00000004)
            t.deleteNode(0xff00000004)
            t.deleteNode(0xff0000000d)
            t.moveChild(0x1, "role1", 1, 0xff0000000c)
            t.moveChild(0x1, "role3", 0, 0xff0000000c)
            t.deleteNode(0xff0000000c)
            t.addNewChild(0x1, "role3", 0, 0xff0000000e, null)
            t.moveChild(0x1, "role1", 0, 0xff0000000e)
            t.addNewChild(0xff0000000e, "role2", 0, 0xff0000000f, null)
            t.deleteNode(0xff0000000f)
            t.addNewChild(0xff0000000e, "role3", 0, 0xff00000010, null)
            t.moveChild(0xff0000000e, "role3", 0, 0xff00000010)
            t.addNewChild(0xff00000010, "role3", 0, 0xff00000011, null)
            t.addNewChild(0xff00000010, "role3", 0, 0xff00000012, null)
            t.moveChild(0x1, "role2", 0, 0xff00000011)
            t.moveChild(0xff00000011, "role1", 0, 0xff00000010)
            t.moveChild(0xff00000010, "role1", 0, 0xff00000012)
            t.moveChild(0x1, "role2", 1, 0xff00000011)
        }, { t -> // 0
            t.addNewChild(0x1, "role2", 0, 0xff00000014, null)
            t.addNewChild(0xff00000014, "role3", 0, 0xff00000015, null)
            t.moveChild(0xff00000012, "role2", 0, 0xff00000014)
            t.addNewChild(0xff00000012, "role2", 0, 0xff00000016, null)
            t.moveChild(0xff0000000e, "role1", 0, 0xff00000015)
            t.deleteNode(0xff00000014)
            t.moveChild(0xff00000011, "role2", 0, 0xff00000016)
            t.moveChild(0x1, "role2", 1, 0xff00000016)
            t.moveChild(0xff00000011, "role1", 1, 0xff0000000e)
            t.moveChild(0x1, "role1", 0, 0xff00000010)
            t.deleteNode(0xff00000015)
            t.moveChild(0xff0000000e, "role2", 0, 0xff00000012)
            t.deleteNode(0xff00000012)
            t.deleteNode(0xff00000010)
            t.addNewChild(0xff00000011, "role2", 0, 0xff00000017, null)
            t.moveChild(0xff00000011, "role3", 0, 0xff0000000e)
            t.addNewChild(0x1, "role3", 0, 0xff00000018, null)
            t.moveChild(0xff00000018, "role1", 0, 0xff0000000e)
            t.addNewChild(0xff0000000e, "role1", 0, 0xff00000019, null)
            t.deleteNode(0xff00000016)
            t.moveChild(0x1, "role2", 0, 0xff00000018)
            t.addNewChild(0xff00000019, "role2", 0, 0xff0000001a, null)
            t.deleteNode(0xff0000001a)
            t.moveChild(0xff00000018, "role1", 0, 0xff0000000e)
            t.addNewChild(0xff00000018, "role2", 0, 0xff0000001b, null)
            t.moveChild(0xff0000001b, "role1", 0, 0xff0000000e)
            t.moveChild(0xff00000019, "role1", 0, 0xff00000011)
            t.deleteNode(0xff00000017)
            t.deleteNode(0xff00000011)
            t.addNewChild(0x1, "role2", 1, 0xff0000001c, null)
            t.addNewChild(0x1, "role3", 0, 0xff0000001d, null)
            t.deleteNode(0xff00000019)
            t.addNewChild(0xff00000018, "role1", 0, 0xff0000001e, null)
            t.addNewChild(0xff0000000e, "role3", 0, 0xff0000001f, null)
            t.addNewChild(0x1, "role1", 0, 0xff00000020, null)
            t.addNewChild(0xff0000001e, "role3", 0, 0xff00000021, null)
            t.addNewChild(0xff0000001c, "role2", 0, 0xff00000022, null)
            t.deleteNode(0xff0000001f)
            t.moveChild(0xff0000001d, "role2", 0, 0xff0000001b)
            t.deleteNode(0xff0000000e)
            t.addNewChild(0xff00000022, "role3", 0, 0xff00000023, null)
            t.moveChild(0xff00000021, "role1", 0, 0xff0000001c)
            t.deleteNode(0xff00000023)
            t.deleteNode(0xff00000020)
            t.moveChild(0x1, "role3", 0, 0xff0000001e)
            t.deleteNode(0xff00000018)
            t.moveChild(0xff00000022, "role2", 0, 0xff0000001d)
            t.deleteNode(0xff0000001b)
            t.moveChild(0x1, "role2", 0, 0xff0000001e)
            t.deleteNode(0xff0000001d)
            t.addNewChild(0xff00000021, "role1", 1, 0xff00000024, null)
            t.addNewChild(0x1, "role3", 0, 0xff00000025, null)
            t.moveChild(0x1, "role2", 1, 0xff00000021)
            t.addNewChild(0xff00000025, "role3", 0, 0xff00000026, null)
            t.moveChild(0xff0000001c, "role1", 0, 0xff00000024)
            t.moveChild(0xff00000026, "role1", 0, 0xff00000022)
            t.addNewChild(0xff00000022, "role1", 0, 0xff00000027, null)
            t.moveChild(0xff00000024, "role2", 0, 0xff00000026)
            t.deleteNode(0xff00000027)
            t.deleteNode(0xff00000025)
            t.addNewChild(0xff0000001e, "role2", 0, 0xff00000028, null)
            t.deleteNode(0xff00000022)
            t.moveChild(0xff00000028, "role2", 0, 0xff00000021)
            t.moveChild(0xff00000028, "role2", 1, 0xff00000021)
            t.moveChild(0xff0000001e, "role3", 0, 0xff00000024)
            t.addNewChild(0xff00000024, "role3", 0, 0xff00000029, null)
            t.deleteNode(0xff00000029)
        }, { t -> // 1
            t.deleteNode(0xff0000000e)
            t.deleteNode(0xff00000012)
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.addNewChild(0xff00000010, "role1", 0, 0xff0000002b, null)
            t.deleteNode(0xff0000002b)
            t.deleteNode(0xff00000010)
            t.addNewChild(0xff00000011, "role3", 0, 0xff0000002c, null)
            t.addNewChild(0x1, "role1", 1, 0xff0000002d, null)
            t.deleteNode(0xff0000002c)
            t.addNewChild(0xff00000011, "role2", 0, 0xff0000002e, null)
            t.deleteNode(0xff0000002d)
            t.addNewChild(0xff0000002e, "role3", 0, 0xff0000002f, null)
            t.moveChild(0x1, "role2", 0, 0xff00000011)
            t.deleteNode(0xff0000002f)
            t.addNewChild(0xff00000011, "role3", 0, 0xff00000030, null)
            t.moveChild(0x1, "role3", 0, 0xff0000002e)
            t.moveChild(0x1, "role1", 0, 0xff00000011)
            t.addNewChild(0x1, "role1", 1, 0xff00000031, null)
            t.moveChild(0x1, "role3", 1, 0xff00000030)
            t.deleteNode(0xff00000011)
            t.addNewChild(0x1, "role2", 0, 0xff00000032, null)
            t.moveChild(0xff00000032, "role2", 0, 0xff00000030)
            t.addNewChild(0xff00000031, "role2", 0, 0xff00000033, null)
            t.deleteNode(0xff00000033)
            t.deleteNode(0xff00000031)
            t.addNewChild(0xff00000030, "role2", 0, 0xff00000034, null)
            t.addNewChild(0x1, "role3", 1, 0xff00000035, null)
            t.deleteNode(0xff00000035)
            t.moveChild(0xff00000032, "role1", 0, 0xff00000030)
            t.addNewChild(0xff00000034, "role1", 0, 0xff00000036, null)
            t.moveChild(0x1, "role1", 0, 0xff0000002e)
            t.moveChild(0x1, "role2", 0, 0xff00000032)
            t.deleteNode(0xff00000036)
            t.addNewChild(0xff00000034, "role1", 0, 0xff00000037, null)
            t.moveChild(0xff0000002e, "role3", 0, 0xff00000032)
            t.moveChild(0x1, "role2", 0, 0xff0000002e)
            t.moveChild(0xff00000030, "role1", 0, 0xff00000037)
            t.deleteNode(0xff00000037)
            t.addNewChild(0xff00000030, "role1", 0, 0xff00000038, null)
            t.deleteNode(0xff00000038)
            t.moveChild(0x1, "role1", 0, 0xff00000032)
            t.deleteNode(0xff0000002e)
            t.deleteNode(0xff00000034)
            t.moveChild(0xff00000032, "role3", 0, 0xff00000030)
            t.deleteNode(0xff00000030)
            t.moveChild(0x1, "role3", 0, 0xff00000032)
            t.moveChild(0x1, "role1", 0, 0xff00000032)
            t.deleteNode(0xff00000032)
            t.addNewChild(0x1, "role1", 0, 0xff00000039, null)
            t.addNewChild(0x1, "role3", 0, 0xff0000003a, null)
            t.addNewChild(0xff0000003a, "role2", 0, 0xff0000003b, null)
            t.addNewChild(0xff0000003a, "role2", 1, 0xff0000003c, null)
            t.moveChild(0xff00000039, "role2", 0, 0xff0000003a)
            t.addNewChild(0xff0000003c, "role2", 0, 0xff0000003d, null)
            t.deleteNode(0xff0000003d)
            t.addNewChild(0xff00000039, "role2", 1, 0xff0000003e, null)
            t.addNewChild(0xff0000003a, "role1", 0, 0xff0000003f, null)
            t.addNewChild(0xff00000039, "role2", 0, 0xff00000040, null)
            t.moveChild(0x1, "role3", 0, 0xff0000003c)
            t.addNewChild(0xff00000040, "role1", 0, 0xff00000041, null)
        }, { t -> // 2
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000043, null)
            t.addNewChild(0xff00000043, "role3", 0, 0xff00000044, null)
            t.moveChild(0xff0000000e, "role3", 0, 0xff00000044)
            t.addNewChild(0xff0000000e, "role1", 0, 0xff00000045, null)
            t.deleteNode(0xff00000045)
            t.deleteNode(0xff00000043)
            t.deleteNode(0xff00000044)
            t.deleteNode(0xff0000000e)
            t.addNewChild(0x1, "role3", 0, 0xff00000046, null)
            t.moveChild(0x1, "role3", 1, 0xff00000012)
            t.moveChild(0x1, "role3", 2, 0xff00000012)
            t.moveChild(0xff00000012, "role2", 0, 0xff00000010)
            t.addNewChild(0xff00000012, "role3", 0, 0xff00000047, null)
            t.addNewChild(0xff00000046, "role2", 0, 0xff00000048, null)
            t.moveChild(0xff00000048, "role3", 0, 0xff00000047)
            t.moveChild(0xff00000011, "role3", 0, 0xff00000012)
            t.addNewChild(0xff00000047, "role2", 0, 0xff00000049, null)
            t.moveChild(0x1, "role2", 1, 0xff00000046)
            t.addNewChild(0xff00000047, "role3", 0, 0xff0000004a, null)
            t.addNewChild(0xff00000047, "role3", 0, 0xff0000004b, null)
            t.moveChild(0xff00000046, "role3", 0, 0xff00000048)
            t.moveChild(0xff00000047, "role3", 1, 0xff00000011)
            t.moveChild(0x1, "role3", 0, 0xff00000048)
            t.deleteNode(0xff00000010)
            t.deleteNode(0xff00000046)
            t.deleteNode(0xff00000049)
            t.deleteNode(0xff00000012)
            t.deleteNode(0xff0000004a)
            t.moveChild(0x1, "role1", 0, 0xff00000048)
            t.moveChild(0x1, "role1", 1, 0xff00000047)
            t.moveChild(0xff00000047, "role2", 0, 0xff00000048)
            t.deleteNode(0xff00000011)
            t.deleteNode(0xff0000004b)
            t.addNewChild(0xff00000047, "role3", 0, 0xff0000004c, null)
            t.deleteNode(0xff00000048)
            t.deleteNode(0xff0000004c)
            t.deleteNode(0xff00000047)
            t.addNewChild(0x1, "role2", 0, 0xff0000004d, null)
            t.moveChild(0x1, "role2", 1, 0xff0000004d)
            t.addNewChild(0x1, "role1", 0, 0xff0000004e, null)
            t.deleteNode(0xff0000004e)
            t.addNewChild(0xff0000004d, "role3", 0, 0xff0000004f, null)
            t.moveChild(0x1, "role3", 0, 0xff0000004d)
            t.deleteNode(0xff0000004f)
            t.moveChild(0x1, "role1", 0, 0xff0000004d)
            t.moveChild(0x1, "role1", 1, 0xff0000004d)
            t.moveChild(0x1, "role1", 1, 0xff0000004d)
            t.addNewChild(0x1, "role3", 0, 0xff00000050, null)
        })
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