package org.modelix.model.persistent

import org.modelix.model.api.IConcept
import org.modelix.model.api.INodeReference
import org.modelix.model.api.PNodeReference
import org.modelix.model.operations.*
import org.modelix.model.persistent.SerializationUtil.escape
import org.modelix.model.persistent.SerializationUtil.longFromHex
import org.modelix.model.persistent.SerializationUtil.longToHex
import org.modelix.model.persistent.SerializationUtil.unescape
import java.lang.IllegalArgumentException
import java.util.*

class OperationSerializer private constructor() {
    companion object {
        val INSTANCE = OperationSerializer()
        private const val SEPARATOR = ";"
        fun serializeConcept(concept: IConcept?): String {
//    return SerializationUtil.escape(((SAbstractConceptAdapter) ((SConceptAdapter) concept).getAdapted()).serialize());
            throw UnsupportedOperationException()
        }

        fun deserializeConcept(serialized: String?): IConcept {
//    return new SConceptAdapter(SAbstractConceptAdapter.deserialize(SerializationUtil.unescape(serialized)));
            throw UnsupportedOperationException()
        }

        fun serializeReference(`object`: INodeReference?): String {
            return if (`object` == null) {
                ""
            } else if (`object` is PNodeReference) {
                longToHex(`object`.id)
                //    } else if (object instanceof SNodeReferenceAdapter) {
//      return SerializationUtil.escape(SNodePointer.serialize(((SNodeReferenceAdapter) object).getReference()));
            } else {
                throw RuntimeException("Unknown reference type: " + `object`.javaClass.name)
            }
        }

        fun deserializeReference(serialized: String?): INodeReference? {
            if (serialized == null || serialized.length == 0) {
                return null
            }
            if (serialized.matches(Regex("[a-fA-F0-9]+"))) {
                return PNodeReference(longFromHex(serialized))
            }
            throw RuntimeException("Cannot deserialize concept: $serialized")
        }

        init {
            INSTANCE.registerSerializer(
                AddNewChildOp::class.java,
                object : Serializer<AddNewChildOp> {
                    override fun serialize(op: AddNewChildOp): String {
                        return longToHex(op.parentId) + SEPARATOR + escape(op.role) + SEPARATOR + op.index + SEPARATOR + longToHex(op.childId) + SEPARATOR + serializeConcept(op.concept)
                    }

                    override fun deserialize(serialized: String): AddNewChildOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return AddNewChildOp(longFromHex(parts[0]), unescape(parts[1])!!, parts[2].toInt(), longFromHex(parts[3]), deserializeConcept(parts[4]))
                    }
                }
            )
            INSTANCE.registerSerializer(
                DeleteNodeOp::class.java,
                object : Serializer<DeleteNodeOp> {
                    override fun serialize(op: DeleteNodeOp): String {
                        return longToHex(op.parentId) + SEPARATOR + escape(op.role) + SEPARATOR + op.index + SEPARATOR + longToHex(op.childId)
                    }

                    override fun deserialize(serialized: String): DeleteNodeOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return DeleteNodeOp(longFromHex(parts[0]), unescape(parts[1])!!, parts[2].toInt(), longFromHex(parts[3]))
                    }
                }
            )
            INSTANCE.registerSerializer(
                MoveNodeOp::class.java,
                object : Serializer<MoveNodeOp> {
                    override fun serialize(op: MoveNodeOp): String {
                        return longToHex(op.childId) + SEPARATOR + longToHex(op.sourceParentId) + SEPARATOR + escape(op.sourceRole) + SEPARATOR + op.sourceIndex + SEPARATOR + longToHex(op.targetParentId) + SEPARATOR + escape(op.targetRole) + SEPARATOR + op.targetIndex
                    }

                    override fun deserialize(serialized: String): MoveNodeOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return MoveNodeOp(longFromHex(parts[0]), longFromHex(parts[1]), unescape(parts[2])!!, parts[3].toInt(), longFromHex(parts[4]), unescape(parts[5])!!, parts[6].toInt())
                    }
                }
            )
            INSTANCE.registerSerializer<NoOp>(
                NoOp::class.java,
                object : Serializer<NoOp> {
                    override fun serialize(op: NoOp): String {
                        return ""
                    }

                    override fun deserialize(serialized: String): NoOp {
                        return NoOp()
                    }
                }
            )
            INSTANCE.registerSerializer(
                SetPropertyOp::class.java,
                object : Serializer<SetPropertyOp> {
                    override fun serialize(op: SetPropertyOp): String {
                        return longToHex(op.nodeId) + SEPARATOR + escape(op.role) + SEPARATOR + escape(op.value)
                    }

                    override fun deserialize(serialized: String): SetPropertyOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return SetPropertyOp(longFromHex(parts[0]), unescape(parts[1])!!, unescape(parts[2])!!)
                    }
                }
            )
            INSTANCE.registerSerializer(
                SetReferenceOp::class.java,
                object : Serializer<SetReferenceOp> {
                    override fun serialize(op: SetReferenceOp): String {
                        return longToHex(op.sourceId) + SEPARATOR + escape(op.role) + SEPARATOR + serializeReference(op.target)
                    }

                    override fun deserialize(serialized: String): SetReferenceOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return SetReferenceOp(longFromHex(parts[0]), unescape(parts[1])!!, deserializeReference(parts[2])!!)
                    }
                }
            )
        }
    }

    private val serializers: MutableMap<Class<out IOperation>, Serializer<*>> = HashMap()
    private val deserializers: MutableMap<String, Serializer<*>> = HashMap()
    fun <T : IOperation> registerSerializer(type: Class<T>, serializer: Serializer<T>) {
        serializers[type] = serializer
        deserializers[type.simpleName] = serializer
    }

    fun serialize(op: IOperation): String {
        val serializer: Serializer<*> = serializers[op.javaClass]
            ?: throw RuntimeException("Unknown operation type: " + op.javaClass.simpleName)
        return op.javaClass.simpleName + SEPARATOR + serializer.genericSerialize(op)
    }

    fun deserialize(serialized: String): IOperation {
        val parts = serialized.split(Regex(SEPARATOR), 2).toTypedArray()
        val deserializer = deserializers[parts[0]]
            ?: throw RuntimeException("Unknown operation type: " + parts[0])
        return deserializer.deserialize(parts[1])!!
    }

    interface Serializer<E : IOperation?> {
        fun genericSerialize(op: Any): String {
            val p = op as? E
            if (p == null) {
                throw IllegalArgumentException()
            } else {
                return serialize(p)
            }
        }
        fun serialize(op: E): String
        fun deserialize(serialized: String): E
    }
}
