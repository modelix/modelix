package org.modelix.model.persistent

import org.apache.commons.lang3.StringUtils
import org.apache.log4j.LogManager
import org.modelix.model.persistent.CPElementRef.Companion.fromString
import org.modelix.model.persistent.SerializationUtil.escape
import org.modelix.model.persistent.SerializationUtil.longFromHex
import org.modelix.model.persistent.SerializationUtil.longToHex
import org.modelix.model.persistent.SerializationUtil.unescape
import org.modelix.model.util.pmap.COWArrays.copy
import org.modelix.model.util.pmap.COWArrays.insert
import org.modelix.model.util.pmap.COWArrays.removeAt
import org.modelix.model.util.pmap.COWArrays.set
import java.util.*
import java.util.function.Function
import java.util.stream.Collectors

class CPNode protected constructor(id1: Long, val concept: String?, parentId1: Long, roleInParent1: String?, private val childrenIds: LongArray, val propertyRoles: Array<String>, val propertyValues: Array<String>, val referenceRoles: Array<String>, val referenceTargets: Array<CPElementRef>) : CPElement(id1, parentId1, roleInParent1) {
    override fun serialize(): String? {
        val sb = StringBuilder()
        sb.append(longToHex(id))
        sb.append("/")
        sb.append(escape(concept))
        sb.append("/")
        sb.append(longToHex(parentId))
        sb.append("/")
        sb.append(escape(roleInParent))
        sb.append("/")
        sb.append(Arrays.stream(childrenIds).mapToObj<String> { obj: Long -> SerializationUtil.longToHex(obj) }.reduce { a: String, b: String -> "$a, $b" })
        sb.append("/")
        var first = true
        run {
            val role_it = Arrays.stream(propertyRoles).iterator()
            val value_it = Arrays.stream(propertyValues).iterator()
            var role_var: String?
            var value_var: String?
            while (role_it.hasNext() && value_it.hasNext()) {
                role_var = role_it.next()
                value_var = value_it.next()
                if (first) {
                    first = false
                } else {
                    sb.append(",")
                }
                sb.append(escape(role_var)).append("=").append(escape(value_var))
            }
        }
        sb.append("/")
        first = true
        run {
            val role_it = Arrays.stream(referenceRoles).iterator()
            val value_it = Arrays.stream(referenceTargets).iterator()
            var role_var: String?
            var value_var: CPElementRef
            while (role_it.hasNext() && value_it.hasNext()) {
                role_var = role_it.next()
                value_var = value_it.next()
                if (first) {
                    first = false
                } else {
                    sb.append(",")
                }
                sb.append(escape(role_var)).append("=").append(escape(value_var.toString()))
            }
        }
        return sb.toString()
    }

    fun getChildrenIds(): Iterable<Long> {
        return Iterable { Arrays.stream(childrenIds).iterator() }
    }

    val childrenIdArray: LongArray
        get() = copy(childrenIds)

    val childrenSize: Int
        get() = childrenIds.size

    fun getChildId(index: Int): Long {
        return childrenIds[index]
    }

    fun getPropertyValue(role: String?): String? {
        val index = Arrays.binarySearch(propertyRoles, role)
        return if (index < 0) null else propertyValues[index]
    }

    fun getReferenceTarget(role: String?): CPElementRef? {
        val index = Arrays.binarySearch(referenceRoles, role)
        return if (index < 0) null else referenceTargets[index]
    }

    fun withPropertyValue(role: String, value: String?): CPNode {
        var index = Arrays.binarySearch(propertyRoles, role)
        return if (value == null) {
            if (index < 0) {
                this
            } else {
                create(id, concept, parentId, roleInParent, childrenIds, removeAt(propertyRoles, index), removeAt(propertyValues, index), referenceRoles, referenceTargets)
            }
        } else {
            if (index < 0) {
                index = -(index + 1)
                create(id, concept, parentId, roleInParent, childrenIds, insert(propertyRoles, index, role), insert(propertyValues, index, value), referenceRoles, referenceTargets)
            } else {
                create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, set(propertyValues, index, value), referenceRoles, referenceTargets)
            }
        }
    }

    fun withReferenceTarget(role: String, target: CPElementRef?): CPNode {
        var index = Arrays.binarySearch(referenceRoles, role)
        return if (target == null) {
            if (index < 0) {
                this
            } else {
                create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, removeAt(referenceRoles, index), removeAt(referenceTargets, index))
            }
        } else {
            if (index < 0) {
                index = -(index + 1)
                create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, insert(referenceRoles, index, role), insert(referenceTargets, index, target))
            } else {
                create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, referenceRoles, set(referenceTargets, index, target))
            }
        }
    }

    companion object {
        private val LOG = LogManager.getLogger(CPNode::class.java)
        private val EMPTY_LONG_ARRAY = LongArray(0)
        val DESERIALIZER = Function { s: String -> deserialize(s) }
        @JvmStatic
        fun create(id: Long, concept: String?, parentId: Long, roleInParent: String?, childrenIds: LongArray, propertyRoles: Array<String>, propertyValues: Array<String>, referenceRoles: Array<String>, referenceTargets: Array<CPElementRef>): CPNode {
            checkForDuplicates(childrenIds)
            require(propertyRoles.size == propertyValues.size) { propertyRoles.size.toString() + " != " + propertyValues.size }
            require(referenceRoles.size == referenceTargets.size) { referenceRoles.size.toString() + " != " + referenceTargets.size }
            return CPNode(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, referenceRoles, referenceTargets)
        }

        private fun checkForDuplicates(values: LongArray) {
            val copy = LongArray(values.size)
            System.arraycopy(values, 0, copy, 0, values.size)
            Arrays.sort(copy)
            for (i in 1 until copy.size) {
                if (copy[i - 1] == copy[i]) {
                    throw RuntimeException("Duplicate value: " + copy[i])
                }
            }
        }

        @JvmStatic
        fun deserialize(input: String): CPNode {
            return try {
                val parts = input.split("/").dropLastWhile { it.isEmpty() }.toTypedArray()
                val properties = Arrays.stream(parts[5].split(",").toTypedArray())
                        .filter { cs: String? -> StringUtils.isNotEmpty(cs) }
                        .map { it: String -> it.split("=").dropLastWhile { it.isEmpty() }.toTypedArray() }
                        .collect(Collectors.toList())
                val references = Arrays.stream(parts[6].split(",").toTypedArray())
                        .filter { cs: String? -> StringUtils.isNotEmpty(cs) }
                        .map { it: String -> it.split("=").dropLastWhile { it.isEmpty() }.toTypedArray() }
                        .collect(Collectors.toList())
                CPNode(
                        longFromHex(parts[0]),
                        unescape(parts[1]),
                        longFromHex(parts[2]),
                        unescape(parts[3]),
                        Arrays.stream(parts[4].split(",").toTypedArray())
                                .filter { cs: String? -> StringUtils.isNotEmpty(cs) }
                                .mapToLong { obj: String -> SerializationUtil.longFromHex(obj) }
                                .toArray(),
                        properties.stream().map { it: Array<String> -> unescape(it[0])!! }.collect(Collectors.toList()).toTypedArray(),
                        properties.stream().map { it: Array<String> -> unescape(it[1])!! }.collect(Collectors.toList()).toTypedArray(),
                        references.stream().map { it: Array<String> -> unescape(it[0])!! }.collect(Collectors.toList()).toTypedArray(),
                        references.stream()
                                .map { it: Array<String> -> fromString(unescape(it[1])!!) }
                                .collect(Collectors.toList()).toTypedArray()
                )
            } catch (ex: Exception) {
                throw RuntimeException("Failed to deserialize $input", ex)
            }
        }
    }

}