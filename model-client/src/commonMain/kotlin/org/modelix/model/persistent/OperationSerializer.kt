/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.persistent

import org.modelix.model.api.IConcept
import org.modelix.model.api.INodeReference
import org.modelix.model.api.PNodeReference
import org.modelix.model.lazy.IConceptSerializer
import org.modelix.model.lazy.INodeReferenceSerializer
import org.modelix.model.operations.*
import org.modelix.model.persistent.SerializationUtil.escape
import org.modelix.model.persistent.SerializationUtil.longFromHex
import org.modelix.model.persistent.SerializationUtil.longToHex
import org.modelix.model.persistent.SerializationUtil.unescape
import kotlin.reflect.KClass

class OperationSerializer private constructor() {
    companion object {
        val INSTANCE = OperationSerializer()
        private const val SEPARATOR = ";"
        fun serializeConcept(concept: IConcept?): String {
            return escape(IConceptSerializer.serialize(concept))
        }

        fun deserializeConcept(serialized: String?): IConcept? {
            return IConceptSerializer.deserialize(unescape(serialized))
        }

        fun serializeReference(obj: INodeReference?): String {
            return when (obj) {
                null -> ""
                is PNodeReference -> longToHex(obj.id)
                is SerializedNodeReference -> escape(obj.serialized)
                else -> escape(INodeReferenceSerializer.serialize(obj))
            }
        }

        fun deserializeReference(serialized: String?): INodeReference? {
            return when {
                serialized.isNullOrEmpty() -> null
                serialized.matches(Regex("[a-fA-F0-9]+")) -> PNodeReference(longFromHex(serialized))
                else -> unescape(serialized)?.let { SerializedNodeReference(serialized) }
            }
        }

        init {
            INSTANCE.registerSerializer(
                AddNewChildOp::class,
                object : Serializer<AddNewChildOp> {
                    override fun serialize(op: AddNewChildOp): String {
                        return longToHex(op.position.nodeId) + SEPARATOR + escape(op.position.role) + SEPARATOR + op.position.index + SEPARATOR + longToHex(op.childId) + SEPARATOR + serializeConcept(op.concept)
                    }

                    override fun deserialize(serialized: String): AddNewChildOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return AddNewChildOp(PositionInRole(longFromHex(parts[0]), unescape(parts[1]), parts[2].toInt()), longFromHex(parts[3]), deserializeConcept(parts[4]))
                    }
                }
            )
            INSTANCE.registerSerializer(
                DeleteNodeOp::class,
                object : Serializer<DeleteNodeOp> {
                    override fun serialize(op: DeleteNodeOp): String {
                        return longToHex(op.childId)
                    }

                    override fun deserialize(serialized: String): DeleteNodeOp {
                        val parts = serialized.split(SEPARATOR)
                        return if (parts.size == 1) {
                            DeleteNodeOp(longFromHex(parts[0]))
                        } else {
                            DeleteNodeOp(longFromHex(parts[3]))
                        }
                    }
                }
            )
            INSTANCE.registerSerializer(
                MoveNodeOp::class,
                object : Serializer<MoveNodeOp> {
                    override fun serialize(op: MoveNodeOp): String {
                        return longToHex(op.childId) + SEPARATOR +
                            longToHex(op.targetPosition.nodeId) + SEPARATOR +
                            escape(op.targetPosition.role) + SEPARATOR +
                            op.targetPosition.index
                    }

                    override fun deserialize(serialized: String): MoveNodeOp {
                        val parts = serialized.split(SEPARATOR)
                        return if (parts.size == 4) {
                            MoveNodeOp(
                                longFromHex(parts[0]),
                                PositionInRole(longFromHex(parts[1]), unescape(parts[2]), parts[3].toInt()),
                            )
                        } else {
                            MoveNodeOp(
                                longFromHex(parts[0]),
                                PositionInRole(longFromHex(parts[4]), unescape(parts[5]), parts[6].toInt()),
                            )
                        }
                    }
                }
            )
            INSTANCE.registerSerializer(
                NoOp::class,
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
                SetPropertyOp::class,
                object : Serializer<SetPropertyOp> {
                    override fun serialize(op: SetPropertyOp): String {
                        return longToHex(op.nodeId) + SEPARATOR + escape(op.role) + SEPARATOR + escape(op.value)
                    }

                    override fun deserialize(serialized: String): SetPropertyOp {
                        val parts = serialized.split(SEPARATOR).dropLastWhile { it.isEmpty() }.toTypedArray()
                        return SetPropertyOp(longFromHex(parts[0]), unescape(parts[1])!!, unescape(parts[2]))
                    }
                }
            )
            INSTANCE.registerSerializer(
                SetReferenceOp::class,
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
            INSTANCE.registerSerializer(
                UndoOp::class,
                object : Serializer<UndoOp> {
                    override fun serialize(op: UndoOp): String {
                        return op.versionHash
                    }

                    override fun deserialize(serialized: String): UndoOp {
                        return UndoOp(serialized)
                    }
                }
            )
        }
    }

    private val serializers: MutableMap<KClass<out IOperation>, Serializer<*>> = HashMap()
    private val deserializers: MutableMap<String, Serializer<*>> = HashMap()
    fun <T : IOperation> registerSerializer(type: KClass<T>, serializer: Serializer<T>) {
        serializers[type] = serializer
        deserializers[type.simpleName!!] = serializer
    }

    fun serialize(op: IOperation): String {
        val serializer: Serializer<*> = serializers[op::class]
            ?: throw RuntimeException("Unknown operation type: " + op::class.simpleName)
        return op::class.simpleName + SEPARATOR + serializer.genericSerialize(op)
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
