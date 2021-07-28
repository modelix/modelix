package org.modelix.model

import org.modelix.model.api.*
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.*
import org.modelix.model.operations.OTBranch
import org.modelix.model.persistent.MapBaseStore
import kotlin.test.Test
import kotlin.test.assertEquals

class TreeSerializationTest {

    fun initTree(branch: IBranch, moreThan10ops: Boolean) {
        branch.runWrite {
            val t = branch.writeTransaction
            t.addNewChild(ITree.ROOT_ID, "c1", 0, 0x7fffffff00000001, null)
            t.addNewChild(0x7fffffff00000001, "c2", 0, 0x7fffffff00000002, null)
            t.addNewChild(ITree.ROOT_ID, "c3", 0, 0x7fffffff00000003, null)
            t.moveChild(0x7fffffff00000002, "c3", 0, 0x7fffffff00000003)
            t.deleteNode(0x7fffffff00000003)
            t.moveChild(ITree.ROOT_ID, "c1", 1, 0x7fffffff00000002)
            t.setProperty(0x7fffffff00000001, "p1", "a-ⓜ")
            t.setProperty(0x7fffffff00000001, "p2", "b-ⓜ")
            t.setReferenceTarget(0x7fffffff00000001, "r1", PNodeReference(0x7fffffff00000001, branch.getId()))
            t.setReferenceTarget(0x7fffffff00000001, "r2", PNodeReference(0x7fffffff00000002, branch.getId()))

            if (moreThan10ops) {
                t.addNewChild(ITree.ROOT_ID, "bignode", 0, 0x7fffffff00000004, null)
                for (i in 1..20) {
                    t.setProperty(0x7fffffff00000004, "p$i", "value$i")
                }
            }
        }
    }

    fun assertTree(tree: ITree) {
        assertEquals(listOf(0x7fffffff00000001, 0x7fffffff00000002), tree.getChildren(ITree.ROOT_ID, "c1"))
        assertEquals("a-ⓜ", tree.getProperty(0x7fffffff00000001, "p1"))
        assertEquals("b-ⓜ", tree.getProperty(0x7fffffff00000001, "p2"))
        assertEquals(PNodeReference(0x7fffffff00000001, tree.getId()!!), tree.getReferenceTarget(0x7fffffff00000001, "r1"))
        assertEquals(PNodeReference(0x7fffffff00000002, tree.getId()!!), tree.getReferenceTarget(0x7fffffff00000001, "r2"))
    }

    @Test
    fun serializeAndDeserialize() {
        // the hash only ensures that JVM and JS produce the same serialized data
        // it can just be updated if the test fails
        serializeAndDeserialize(false, "Ci8-C*weNQv09_2eGp9Mvxo8l6VtuGU3n35qP1sQYw2Y")
    }

    @Test
    fun serializeAndDeserialize_AddNewChildSubtreeOp() {
        // the hash only ensures that JVM and JS produce the same serialized data
        // it can just be updated if the test fails
        serializeAndDeserialize(true, "50ZVC*SITjLf3YkIUx5stSZfX8nPem80o9E2LwG0B6To")
    }

    fun serializeAndDeserialize(moreThan10ops: Boolean, expectedVersionHash: String) {
        val mapStore = MapBaseStore()
        var store = mapStore
        var objectStore = ObjectStoreCache(store)
        val initialTree = CLTree(RepositoryId("tree01"), objectStore)
        val initialVersion = CLVersion.createRegularVersion(
            id = 1,
            time = null,
            author = null,
            tree = initialTree,
            baseVersion = null,
            operations = arrayOf()
        )
        val idGenerator = IdGenerator(Int.MAX_VALUE)
        val branch = OTBranch(PBranch(initialTree, idGenerator), idGenerator, objectStore)
        initTree(branch, moreThan10ops)
        val (ops, tree) = branch.operationsAndTree
        val version = CLVersion.createRegularVersion(
            id = 1,
            time = null,
            author = null,
            tree = tree as CLTree,
            baseVersion = initialVersion,
            operations = ops.map { it.getOriginalOp() }.toTypedArray()
        )
        val versionHash = version.write()
        store.put("branch_master", versionHash)
        mapStore.entries.sortedBy { it.key }.forEach { println(""""${it.key}" to "${it.value}",""") }
        assertTree(tree)
        assertEquals(expectedVersionHash, versionHash) // ensures that JVM and JS targets produce the same serialized data

        store = mapStore
        objectStore = ObjectStoreCache(store)
        val deserializedVersion = CLVersion(version.hash, objectStore)
        assertTree(deserializedVersion.tree)
    }

    // @Test
    fun backwardCompatibility01() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI" to "tree01/1/8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ",
                "8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ" to "I/6/UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc,zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo",
                "CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E" to "I/1/XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0",
                "EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs" to "L/7fffffff00000001/fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg" to "I/1/kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik",
                "UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc" to "I/1/UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg",
                "UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg" to "I/1/EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E",
                "XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0" to "I/1/GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg",
                "Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI" to "L/1/pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "branch_master" to "k_hLYUwdOPZp97xElZ1v8tY4_8bFIcpd_B95FJ3Mbkk",
                "fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo" to "tree01/1/xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4",
                "k_hLYUwdOPZp97xElZ1v8tY4_8bFIcpd_B95FJ3Mbkk" to "1/%00/%00/28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI/swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;1;c3;0;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000002;c3;0;7fffffff00000003,MoveNodeOp;7fffffff00000002;7fffffff00000001;c2;0;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/10",
                "kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik" to "I/10000001/Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI,EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs",
                "pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg" to "1/%00/%00/i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo///0",
                "uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM" to "L/1/CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4" to "I/2/uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM",
                "zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo" to "L/7fffffff00000002/Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
            )
        )

        assertStore(mapStore)
    }

    // @Test
    fun backwardCompatibility02() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI" to "tree01/1/8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ",
                "8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ" to "I/6/UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc,zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo",
                "CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E" to "I/1/XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0",
                "EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs" to "L/7fffffff00000001/fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg" to "I/1/kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik",
                "UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc" to "I/1/UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg",
                "UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg" to "I/1/EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E",
                "XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0" to "I/1/GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg",
                "Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI" to "L/1/pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "branch_master" to "wOL09ugqRKIO9LhVXFXY6ad51cx0JhbzYz-gKb2fe50",
                "fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo" to "tree01/1/xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4",
                "kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik" to "I/10000001/Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI,EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs",
                "pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg" to "1/%00/%00/i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo///0",
                "uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM" to "L/1/CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "wOL09ugqRKIO9LhVXFXY6ad51cx0JhbzYz-gKb2fe50" to "1/%00/%00/28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI/swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;1;c3;0;7fffffff00000002;c3;0;7fffffff00000001.1,DeleteNodeOp;7fffffff00000002;c3;0;7fffffff00000003,MoveNodeOp;7fffffff00000002;7fffffff00000001;c2;0;1;c1;1;,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/10",
                "xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4" to "I/2/uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM",
                "zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo" to "L/7fffffff00000002/Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
            )
        )

        assertStore(mapStore)
    }

    // @Test
    fun backwardCompatibility03() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI" to "tree01/1/8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ",
                "8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ" to "I/6/UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc,zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo",
                "CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E" to "I/1/XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0",
                "EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs" to "L/7fffffff00000001/fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg" to "I/1/kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik",
                "NeGBxjWC7eRlsRZ1-oYjDnO7-bRL6dIrZhWZw5JT8qI" to "1/%00/%00/28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI/swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000003,MoveNodeOp;7fffffff00000002;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/10",
                "UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc" to "I/1/UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg",
                "UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg" to "I/1/EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E",
                "XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0" to "I/1/GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg",
                "Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI" to "L/1/pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "branch_master" to "NeGBxjWC7eRlsRZ1-oYjDnO7-bRL6dIrZhWZw5JT8qI",
                "fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo" to "tree01/1/xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4",
                "kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik" to "I/10000001/Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI,EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs",
                "pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "swOiu-pMGokZMvRT5eARK8nvnypbHwBECd-aGdNPcSg" to "1/%00/%00/i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo///0",
                "uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM" to "L/1/CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4" to "I/2/uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM",
                "zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo" to "L/7fffffff00000002/Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
            )
        )

        assertStore(mapStore)
    }

    // @Test
    fun backwardCompatibility04() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI" to "tree01/1/8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ",
                "8CWGz4xb5f0hIqbgLctavtpFrptCuG94XdUGe2-4KGQ" to "I/6/UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc,zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo",
                "CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E" to "I/1/XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0",
                "EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs" to "L/7fffffff00000001/fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg" to "I/1/kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik",
                "UIMGKdVn9fN98Umsj6GXO1bvR-Gl6Vifq8AIPxh1wHc" to "I/1/UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg",
                "UgHUFRBNmQ5rNlhuQUsYP-LX9WLDvXHrInsRhQCgjBg" to "I/1/EK-Xkb6hABfavQBI__ZHUelBB0m8SeTeegfvMcMOs8E",
                "XPrUAyo9rG5h4isIUDaW7SdOYIzylCAi9JOmci-JoA0" to "I/1/GRFx8EF0BKDiQcyf-ROk_8o1Q9yJcBZnImK5B_SF4Pg",
                "Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI" to "L/1/pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "branch_master" to "wf8TLLXCNeHYAWmOqpGMrfNrSXchl2-XU6xUoQdFH6w",
                "fKGCFwU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo" to "tree01/1/xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4",
                "ikCeRQZueRYEc3SoY6FLfIqGQPaxszBySFXcBVNxz5M" to "1/%00/%00/i_qLKIEhmzECtAZE4n4tRdqBN1ZZljmH9hGVQd9Ywxo///0/",
                "kfYlO4jkKrILND4kPS79iWlce7jLxEko-caUZQ0bJik" to "I/10000001/Y3o9miTq6zAHXUcahYCqooOnN7EZon9FkT6fXEiwgVI,EY904QKlzAcwpfBtyw110a9HK9viRJYUEM0oNG-oCqs",
                "pdFUBoUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM" to "L/1/CTVRwa6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "wf8TLLXCNeHYAWmOqpGMrfNrSXchl2-XU6xUoQdFH6w" to "1/%00/%00/28qw_8mh6MRLX7Nd526swBVOVqAy3XDoCVrsDy_55KI/ikCeRQZueRYEc3SoY6FLfIqGQPaxszBySFXcBVNxz5M/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000003,MoveNodeOp;7fffffff00000002;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/10/",
                "xeeMfgxyAcWthtSJLaMGxcCZGiIogYozw1rf4uxgmM4" to "I/2/uGTpQ2TJtRyelfhmZVWIIF4M9svxcMZtU4WTlHPFKsM",
                "zQ6juYpdIcbV9hgUZcNOogQ3ryPXenGlDm-xekru4xo" to "L/7fffffff00000002/Et95z_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
            )
        )

        assertStore(mapStore)
    }

    // @Test
    fun backwardCompatibility05() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "HMsJ6*Xf4WYuE_wHDAhKGQOYq8FOnes-fzDaJ2Uv1-VA" to "tree01/1/Ovgun*AsjdgxqowKRsCLj9cChzZaGI6nTV0NJsgfq0rs",
                "Ovgun*AsjdgxqowKRsCLj9cChzZaGI6nTV0NJsgfq0rs" to "I/6/pFhv2*ScMxR0IP4hfv5htTTl95ouj2oFUBspcZpMMF0A,mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4",
                "XYilb*NsicC2D7y5g2dBx03rflbHYyRrYkn5__GAvnWc" to "1/%00/%00/HMsJ6*Xf4WYuE_wHDAhKGQOYq8FOnes-fzDaJ2Uv1-VA//AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000003,MoveNodeOp;7fffffff00000002;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002/10/",
                "aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0" to "L/7fffffff00000001/fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "br_-H*i8YladxLGTFzOj1bKfiDl41lbTa1cqBxS6Dilw" to "I/10000001/wpWTu*_jgNVwPY3xKfEMb2kOMHhIYxU1A3mHCXXKzwN4,aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0",
                "branch_master" to "XYilb*NsicC2D7y5g2dBx03rflbHYyRrYkn5__GAvnWc",
                "cXiQQ*hmMY4hI4DLXtzBFm_2bUz4KLnnfsbupiGXDNyU" to "I/1/x_bof*v8CBnjMI9fRH9QiRYsS3RqrdHjRA8zhqeTVuwQ",
                "fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4" to "L/7fffffff00000002/Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
                "omCN-*elaFM3_USYahuiPS8SsPcRKoDn7rIL-7fKJ6kw" to "I/1/br_-H*i8YladxLGTFzOj1bKfiDl41lbTa1cqBxS6Dilw",
                "pFhv2*ScMxR0IP4hfv5htTTl95ouj2oFUBspcZpMMF0A" to "I/1/pr1xK*QDIr3d0xzEHyfNIyGagxR-B9kV6sDqTqZcum4s",
                "pdFUB*oUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "pr1xK*QDIr3d0xzEHyfNIyGagxR-B9kV6sDqTqZcum4s" to "I/1/cXiQQ*hmMY4hI4DLXtzBFm_2bUz4KLnnfsbupiGXDNyU",
                "wpWTu*_jgNVwPY3xKfEMb2kOMHhIYxU1A3mHCXXKzwN4" to "L/1/pdFUB*oUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "x_bof*v8CBnjMI9fRH9QiRYsS3RqrdHjRA8zhqeTVuwQ" to "I/1/omCN-*elaFM3_USYahuiPS8SsPcRKoDn7rIL-7fKJ6kw",
            )
        )

        assertStore(mapStore)
    }

    // @Test
    fun backwardCompatibility05_AddNewChildSubtreeOp() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "6PKA3*bbJhnbA-bfssISeyyxpEvKe1y1hkHLF_kRA7OI" to "L/7fffffff00000004/6rFN5*8EECqQe3NYkCW27Hj6d0G6ykD0AwII3I7FKNjc",
                "6rFN5*8EECqQe3NYkCW27Hj6d0G6ykD0AwII3I7FKNjc" to "7fffffff00000004/%00/1/bignode//p1=value1,p10=value10,p11=value11,p12=value12,p13=value13,p14=value14,p15=value15,p16=value16,p17=value17,p18=value18,p19=value19,p2=value2,p20=value20,p3=value3,p4=value4,p5=value5,p6=value6,p7=value7,p8=value8,p9=value9/",
                "9yZqX*K2EzDQ2OD55nQ9B7BtZ5FIoAQOOTha2biysf1U" to "AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000003,MoveNodeOp;7fffffff00000002;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002,AddNewChildOp;1;bignode;0;7fffffff00000004;%00,SetPropertyOp;7fffffff00000004;p1;value1,SetPropertyOp;7fffffff00000004;p2;value2,SetPropertyOp;7fffffff00000004;p3;value3,SetPropertyOp;7fffffff00000004;p4;value4,SetPropertyOp;7fffffff00000004;p5;value5,SetPropertyOp;7fffffff00000004;p6;value6,SetPropertyOp;7fffffff00000004;p7;value7,SetPropertyOp;7fffffff00000004;p8;value8,SetPropertyOp;7fffffff00000004;p9;value9,SetPropertyOp;7fffffff00000004;p10;value10,SetPropertyOp;7fffffff00000004;p11;value11,SetPropertyOp;7fffffff00000004;p12;value12,SetPropertyOp;7fffffff00000004;p13;value13,SetPropertyOp;7fffffff00000004;p14;value14,SetPropertyOp;7fffffff00000004;p15;value15,SetPropertyOp;7fffffff00000004;p16;value16,SetPropertyOp;7fffffff00000004;p17;value17,SetPropertyOp;7fffffff00000004;p18;value18,SetPropertyOp;7fffffff00000004;p19;value19,SetPropertyOp;7fffffff00000004;p20;value20",
                "CTVRw*a6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "LvNC2*MsGF9K7aTAB9SFqQNTA9qwr3S-EnU-Njg03C-A" to "L/1/tn1yU*AaRfmUj0lQDjnNuie3Ln5nIW4-hxHg2ZKRbLcw",
                "QCHB7*ih4wRCTwSJGwE1BVBkJHVzW0tHQbrzp8TPQtzw" to "tree01/1/h_wag*mwA-TnqFmOW5nasofP6fakdXUT3z7EPU2kqa20",
                "SZDic*PQ68XXYBg_rT9ZqlxGUA8QEgVm34UbQmS8e_lI" to "I/1/pIGA0*hp_JWhKncSSObdmU-AuZ0Tv3s37pis6kToU2-w",
                "WZHds*IH4BcULD8r2luLrmyLEmUljMKs5c_JzA8hvVec" to "I/1/yD2bw*OVABfbL3WyEPYPLdnQeYD4K3rbEaIripgx8j9o",
                "Xhga2*Mj3BjwVYg01WhIax37895EcWBwOVnBYoIY5s7M" to "I/10000001/LvNC2*MsGF9K7aTAB9SFqQNTA9qwr3S-EnU-Njg03C-A,aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0",
                "ZOO8s*Bh4LiAAhPpLa2GS4lNrF7ZMB-LIyBOv382x0Rs" to "tree01/1/s61HN*MQLl_sNdFNvx0sf5twkvawYv1Dqy8bNpIVaF_s",
                "_C85v*kMOaMLUREtIiKI4VlTd_6Q4vJv6q8SJkBpOhJE" to "I/1/WZHds*IH4BcULD8r2luLrmyLEmUljMKs5c_JzA8hvVec",
                "aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0" to "L/7fffffff00000001/fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "branch_master" to "lC7rj*bs8u4a2EIhw08x8Rk6VJgFcIjYHxtcN6tckTS4",
                "fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "h_wag*mwA-TnqFmOW5nasofP6fakdXUT3z7EPU2kqa20" to "I/16/SZDic*PQ68XXYBg_rT9ZqlxGUA8QEgVm34UbQmS8e_lI,mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4,6PKA3*bbJhnbA-bfssISeyyxpEvKe1y1hkHLF_kRA7OI",
                "ih0d_*YEBkK_kuAjOhVk_pquoo5uI31bsuaOWgoXGCbo" to "1/%00/%00/ZOO8s*Bh4LiAAhPpLa2GS4lNrF7ZMB-LIyBOv382x0Rs////0/",
                "lC7rj*bs8u4a2EIhw08x8Rk6VJgFcIjYHxtcN6tckTS4" to "1/%00/%00/QCHB7*ih4wRCTwSJGwE1BVBkJHVzW0tHQbrzp8TPQtzw/ih0d_*YEBkK_kuAjOhVk_pquoo5uI31bsuaOWgoXGCbo///31/9yZqX*K2EzDQ2OD55nQ9B7BtZ5FIoAQOOTha2biysf1U",
                "mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4" to "L/7fffffff00000002/Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
                "pIGA0*hp_JWhKncSSObdmU-AuZ0Tv3s37pis6kToU2-w" to "I/1/_C85v*kMOaMLUREtIiKI4VlTd_6Q4vJv6q8SJkBpOhJE",
                "qYCCM*hnYowY5aEKef26etn8sO_yfH898xZnX3xQcgqs" to "L/1/CTVRw*a6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "s61HN*MQLl_sNdFNvx0sf5twkvawYv1Dqy8bNpIVaF_s" to "I/2/qYCCM*hnYowY5aEKef26etn8sO_yfH898xZnX3xQcgqs",
                "tn1yU*AaRfmUj0lQDjnNuie3Ln5nIW4-hxHg2ZKRbLcw" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002,7fffffff00000004//",
                "yD2bw*OVABfbL3WyEPYPLdnQeYD4K3rbEaIripgx8j9o" to "I/1/Xhga2*Mj3BjwVYg01WhIax37895EcWBwOVnBYoIY5s7M",
            )
        )

        assertStore(mapStore)
    }

    @Test
    fun backwardCompatibility06() {
        val mapStore = MapBaseStore()
        mapStore.putAll(
            mapOf(
                "4m5y_*_CL9M94j1tS6Mgobmjn-hqA_KE1UaSWkk0Dgp8" to "I/14/aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0,mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4",
                "5VxVy*QAEbI5A8wSrFr6vBveFcJD9hrtfQwR0PaVoPtU" to "tree01/2/V_4I6*Hbk19Lb1sBNIU1k7aA9kGXTI3zBQqYZ9CZje74",
                "CTVRw*a6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A" to "1/%00/0/%00///",
                "Ci8-C*weNQv09_2eGp9Mvxo8l6VtuGU3n35qP1sQYw2Y" to "1/%00/%00/RnsmA*DMT-UP1jEjj21jrC32p8Vgdy5_Mms3ZP5XW3L8/Zs_vL*Bou5KBxQJ6JkpGe5eQH6AKRza-7uBWcdQPjAOo///10/AddNewChildOp;1;c1;0;7fffffff00000001;%00,AddNewChildOp;7fffffff00000001;c2;0;7fffffff00000002;%00,AddNewChildOp;1;c3;0;7fffffff00000003;%00,MoveNodeOp;7fffffff00000003;7fffffff00000002;c3;0,DeleteNodeOp;7fffffff00000003,MoveNodeOp;7fffffff00000002;1;c1;1,SetPropertyOp;7fffffff00000001;p1;a-%E2%93%9C,SetPropertyOp;7fffffff00000001;p2;b-%E2%93%9C,SetReferenceOp;7fffffff00000001;r1;7fffffff00000001,SetReferenceOp;7fffffff00000001;r2;7fffffff00000002",
                "Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0" to "7fffffff00000002/%00/1/c1///",
                "RnsmA*DMT-UP1jEjj21jrC32p8Vgdy5_Mms3ZP5XW3L8" to "tree01/2/WFJ1y*c5TDMvw-Q4Bo3epA5SeVZwtGsNEoF7evoBsSes",
                "V_4I6*Hbk19Lb1sBNIU1k7aA9kGXTI3zBQqYZ9CZje74" to "S/1/0/qYCCM*hnYowY5aEKef26etn8sO_yfH898xZnX3xQcgqs",
                "WFJ1y*c5TDMvw-Q4Bo3epA5SeVZwtGsNEoF7evoBsSes" to "I/8001/wpWTu*_jgNVwPY3xKfEMb2kOMHhIYxU1A3mHCXXKzwN4,y9sre*4LpC3weZAxs3esUcmKQFP86G38KnOeyIK285Zs",
                "Zs_vL*Bou5KBxQJ6JkpGe5eQH6AKRza-7uBWcdQPjAOo" to "1/%00/%00/5VxVy*QAEbI5A8wSrFr6vBveFcJD9hrtfQwR0PaVoPtU////0/",
                "aFC83*xz2jokKqzz5pUs6OIxEj-hCatYuxl53lJjzoy0" to "L/7fffffff00000001/fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4",
                "branch_master" to "Ci8-C*weNQv09_2eGp9Mvxo8l6VtuGU3n35qP1sQYw2Y",
                "fKGCF*wU73YLn6ErIfxsHPVMne2LZQu2FbEVm4h540e4" to "7fffffff00000001/%00/1/c1//p1=a-%E2%93%9C,p2=b-%E2%93%9C/r1=7fffffff00000001,r2=7fffffff00000002",
                "mfve0*pYVzQSTH0xdUMCy8LnrhZXzNqBf-xPVLUadCk4" to "L/7fffffff00000002/Et95z*_OAINGqgFr3DvKVtdBGEa3gUNjkZF77F7CQQf0",
                "pdFUB*oUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8" to "1/%00/0/%00/7fffffff00000001,7fffffff00000002//",
                "qYCCM*hnYowY5aEKef26etn8sO_yfH898xZnX3xQcgqs" to "L/1/CTVRw*a6KXJ4o7uzGlp-kUosxpyRf4fUpHnLokG9T86A",
                "wpWTu*_jgNVwPY3xKfEMb2kOMHhIYxU1A3mHCXXKzwN4" to "L/1/pdFUB*oUqfKisgMWISa51tIYiGSQSEktOwmH5CmWsqP8",
                "y9sre*4LpC3weZAxs3esUcmKQFP86G38KnOeyIK285Zs" to "S/11/7ffffff0000000/4m5y_*_CL9M94j1tS6Mgobmjn-hqA_KE1UaSWkk0Dgp8",
            )
        )

        assertStore(mapStore)
    }

    fun assertStore(store: IKeyValueStore) {
        val deserializedVersion = CLVersion(store["branch_master"]!!, ObjectStoreCache(store))
        val deserializedTree = deserializedVersion.tree
        assertTree(deserializedTree)

        val branch = PBranch(CLTree(RepositoryId("tree01"), ObjectStoreCache(MapBaseStore())), IdGenerator(2))
        branch.runWrite {
            for (operation in deserializedVersion.operations) {
                operation.apply(branch.writeTransaction, deserializedVersion.store)
            }
        }
        val treeFromOps = branch.computeRead { branch.transaction.tree }
        assertTree(treeFromOps)
    }
}
