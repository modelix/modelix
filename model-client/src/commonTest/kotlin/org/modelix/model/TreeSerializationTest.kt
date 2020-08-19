package org.modelix.model

import org.modelix.model.api.*
import org.modelix.model.client.GarbageFilteringStore
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.lazy.TreeId
import org.modelix.model.operations.OTBranch
import org.modelix.model.persistent.MapBaseStore
import kotlin.test.Test
import kotlin.test.assertEquals

class TreeSerializationTest {

    fun initTree(branch: IBranch) {
        branch.runWrite {
            val t = branch.writeTransaction
            t.addNewChild(ITree.ROOT_ID, "c1", 0, 0x7fffffff00000001, null)
            t.addNewChild(ITree.ROOT_ID, "c1", 1, 0x7fffffff00000002, null)
            t.setProperty(0x7fffffff00000001, "p1", "a-ⓜ")
            t.setProperty(0x7fffffff00000001, "p2", "b-ⓜ")
            t.setReferenceTarget(0x7fffffff00000001, "r1", PNodeReference(0x7fffffff00000001))
            t.setReferenceTarget(0x7fffffff00000001, "r2", PNodeReference(0x7fffffff00000002))
        }
    }

    fun assertTree(tree: ITree) {
        assertEquals(listOf(0x7fffffff00000001, 0x7fffffff00000002), tree.getChildren(ITree.ROOT_ID, "c1"))
        assertEquals("a-ⓜ", tree.getProperty(0x7fffffff00000001, "p1"))
        assertEquals("b-ⓜ", tree.getProperty(0x7fffffff00000001, "p2"))
        assertEquals(PNodeReference(0x7fffffff00000001), tree.getReferenceTarget(0x7fffffff00000001, "r1"))
        assertEquals(PNodeReference(0x7fffffff00000002), tree.getReferenceTarget(0x7fffffff00000001, "r2"))
    }

    @Test
    fun serializeAndDeserialize() {
        val mapStore = MapBaseStore()
        var store = GarbageFilteringStore(mapStore)
        var objectStore = ObjectStoreCache(store)
        val initialTree = CLTree(TreeId("tree01"), objectStore)
        val initialVersion = CLVersion(
            1,
            null,
            null,
            initialTree.hash,
            null,
            arrayOf(),
            objectStore
        )
        val idGenerator = IdGenerator(Int.MAX_VALUE)
        val branch = OTBranch(PBranch(initialTree, idGenerator), idGenerator)
        initTree(branch)
        val (ops, tree) = branch.operationsAndTree
        val version = CLVersion(
            1,
            null,
            null,
            (tree as CLTree).hash,
            initialVersion.hash,
            ops.map { it.originalOp }.toTypedArray(),
            objectStore
        )
        store.put("branch_master", version.hash)
        mapStore.entries.forEach { println(""""${it.key}" to "${it.value}",""") }
        assertTree(tree)

        store = GarbageFilteringStore(mapStore)
        objectStore = ObjectStoreCache(store)
        val deserializedVersion = CLVersion(version.hash, objectStore)
        assertTree(deserializedVersion.tree)
    }

    @Test
    fun backwardsCompatability() {
        // Ensures backwards compatibility.

        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI" to "L/1/pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4" to "I/2/uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM",
                "EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs" to "L/7fffffff00000001/fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo" to "L/7fffffff00000002/Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
                "CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc" to "I/1/UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg",
                "RDLuB7qRQA1enxK2tl8Qm2e1jIhb9U27bP81s_ni1X4" to "1/%00/%00/28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI/swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;1;c1;1;7fffffff00000002;%00,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/6",
                "fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ" to "I/6/UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc,zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo",
                "kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik" to "I/10000001/Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI,EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs",
                "GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg" to "I/1/kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik",
                "UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg" to "I/1/EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E",
                "28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI" to "tree01/1/8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ",
                "swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg" to "1/%00/%00/i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo///0",
                "XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0" to "I/1/GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg",
                "branch_master" to "RDLuB7qRQA1enxK2tl8Qm2e1jIhb9U27bP81s_ni1X4",
                "EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E" to "I/1/XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0",
                "uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM" to "L/1/CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo" to "tree01/1/xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4",
            )
        )

        val deserializedVersion = CLVersion(mapStore["branch_master"]!!, ObjectStoreCache(GarbageFilteringStore(mapStore)))
        val deserializedTree = deserializedVersion.tree
        assertTree(deserializedTree)

        val branch = PBranch(CLTree(TreeId("tree01"), ObjectStoreCache(MapBaseStore())), IdGenerator(2))
        branch.runWrite {
            for (operation in deserializedVersion.operations) {
                operation.apply(branch.writeTransaction)
            }
        }
        val treeFromOps = branch.computeRead { branch.transaction.tree }
        assertTree(treeFromOps)
    }
}
