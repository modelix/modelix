package org.modelix.model.persistent;

import org.modelix.model.api.IConcept;
import org.modelix.model.api.INodeReference;
import org.modelix.model.api.PNodeReference;
import org.modelix.model.operations.AddNewChildOp;
import org.modelix.model.operations.DeleteNodeOp;
import org.modelix.model.operations.IOperation;
import org.modelix.model.operations.MoveNodeOp;
import org.modelix.model.operations.NoOp;
import org.modelix.model.operations.SetPropertyOp;
import org.modelix.model.operations.SetReferenceOp;

import java.util.HashMap;
import java.util.Map;

public class OperationSerializer {

  public static final OperationSerializer INSTANCE = new OperationSerializer();

  static {
    INSTANCE.registerSerializer(AddNewChildOp.class, new Serializer<AddNewChildOp>() {
      @Override
      public String serialize(AddNewChildOp op) {
        return SerializationUtil.longToHex(op.getParentId()) + SEPARATOR + SerializationUtil.escape(op.getRole()) + SEPARATOR + op.getIndex() + SEPARATOR + SerializationUtil.longToHex(op.getChildId()) + SEPARATOR + serializeConcept(op.getConcept());
      }

      @Override
      public AddNewChildOp deserialize(String serialized) {
        String[] parts = serialized.split(SEPARATOR, -1);
        return new AddNewChildOp(SerializationUtil.longFromHex(parts[0]), SerializationUtil.unescape(parts[1]), Integer.parseInt(parts[2]), SerializationUtil.longFromHex(parts[3]), deserializeConcept(parts[4]));
      }
    });
    INSTANCE.registerSerializer(DeleteNodeOp.class, new Serializer<DeleteNodeOp>() {
      @Override
      public String serialize(DeleteNodeOp op) {
        return SerializationUtil.longToHex(op.getParentId()) + SEPARATOR + SerializationUtil.escape(op.getRole()) + SEPARATOR + op.getIndex() + SEPARATOR + SerializationUtil.longToHex(op.getChildId());
      }

      @Override
      public DeleteNodeOp deserialize(String serialized) {
        String[] parts = serialized.split(SEPARATOR, -1);
        return new DeleteNodeOp(SerializationUtil.longFromHex(parts[0]), SerializationUtil.unescape(parts[1]), Integer.parseInt(parts[2]), SerializationUtil.longFromHex(parts[3]));
      }
    });
    INSTANCE.registerSerializer(MoveNodeOp.class, new Serializer<MoveNodeOp>() {
      @Override
      public String serialize(MoveNodeOp op) {
        return SerializationUtil.longToHex(op.getChildId()) + SEPARATOR + SerializationUtil.longToHex(op.getSourceParentId()) + SEPARATOR + SerializationUtil.escape(op.getSourceRole()) + SEPARATOR + op.getSourceIndex() + SEPARATOR + SerializationUtil.longToHex(op.getTargetParentId()) + SEPARATOR + SerializationUtil.escape(op.getTargetRole()) + SEPARATOR + op.getTargetIndex();
      }

      @Override
      public MoveNodeOp deserialize(String serialized) {
        String[] parts = serialized.split(SEPARATOR, -1);
        return new MoveNodeOp(SerializationUtil.longFromHex(parts[0]), SerializationUtil.longFromHex(parts[1]), SerializationUtil.unescape(parts[2]), Integer.parseInt(parts[3]), SerializationUtil.longFromHex(parts[4]), SerializationUtil.unescape(parts[5]), Integer.parseInt(parts[6]));
      }
    });
    INSTANCE.registerSerializer(NoOp.class, new Serializer<NoOp>() {
      @Override
      public String serialize(NoOp op) {
        return "";
      }

      @Override
      public NoOp deserialize(String serialized) {
        return new NoOp();
      }
    });
    INSTANCE.registerSerializer(SetPropertyOp.class, new Serializer<SetPropertyOp>() {
      @Override
      public String serialize(SetPropertyOp op) {
        return SerializationUtil.longToHex(op.getNodeId()) + SEPARATOR + SerializationUtil.escape(op.getRole()) + SEPARATOR + SerializationUtil.escape(op.getValue());
      }

      @Override
      public SetPropertyOp deserialize(String serialized) {
        String[] parts = serialized.split(SEPARATOR, -1);
        return new SetPropertyOp(SerializationUtil.longFromHex(parts[0]), SerializationUtil.unescape(parts[1]), SerializationUtil.unescape(parts[2]));
      }
    });
    INSTANCE.registerSerializer(SetReferenceOp.class, new Serializer<SetReferenceOp>() {
      @Override
      public String serialize(SetReferenceOp op) {
        return SerializationUtil.longToHex(op.sourceId) + SEPARATOR + SerializationUtil.escape(op.role) + SEPARATOR + serializeReference(op.target);
      }

      @Override
      public SetReferenceOp deserialize(String serialized) {
        String[] parts = serialized.split(SEPARATOR, -1);
        return new SetReferenceOp(SerializationUtil.longFromHex(parts[0]), SerializationUtil.unescape(parts[1]), deserializeReference(parts[2]));
      }
    });

  }

  private static final String SEPARATOR = ";";

  private Map<Class<? extends IOperation>, Serializer> serializers = new HashMap<>();
  private Map<String, Serializer> deserializers = new HashMap<>();

  private OperationSerializer() {
  }

  public <T extends IOperation> void registerSerializer(Class<T> type, Serializer<T> serializer) {
    serializers.put(type, serializer);
    deserializers.put(type.getSimpleName(), serializer);
  }

  public String serialize(IOperation op) {
    Serializer serializer = serializers.get(op.getClass());
    if (serializer == null) {
      throw new RuntimeException("Unknown operation type: " + op.getClass().getSimpleName());
    }
    return op.getClass().getSimpleName() + SEPARATOR + serializer.serialize(op);
  }

  public IOperation deserialize(String serialized) {
    String[] parts = serialized.split(SEPARATOR, 2);
    Serializer deserializer = deserializers.get(parts[0]);
    if (deserializer == null) {
      throw new RuntimeException("Unknown operation type: " + parts[0]);
    }
    return deserializer.deserialize(parts[1]);
  }


  public interface Serializer<E extends IOperation> {
    String serialize(E op);
    E deserialize(String serialized);
  }

  public static String serializeConcept(IConcept concept) {
//    return SerializationUtil.escape(((SAbstractConceptAdapter) ((SConceptAdapter) concept).getAdapted()).serialize());
    throw new UnsupportedOperationException();
  }

  public static IConcept deserializeConcept(String serialized) {
//    return new SConceptAdapter(SAbstractConceptAdapter.deserialize(SerializationUtil.unescape(serialized)));
    throw new UnsupportedOperationException();
  }

  public static String serializeReference(INodeReference object) {
    if (object == null) {
      return "";
    } else if (object instanceof PNodeReference) {
      return SerializationUtil.longToHex(((PNodeReference) object).getId());
//    } else if (object instanceof SNodeReferenceAdapter) {
//      return SerializationUtil.escape(SNodePointer.serialize(((SNodeReferenceAdapter) object).getReference()));
    } else {
      throw new RuntimeException("Unknown reference type: " + object.getClass().getName());
    }
  }

  public static INodeReference deserializeReference(String serialized) {
    if ((serialized == null || serialized.length() == 0)) {
      return null;
    }
    if (serialized.matches("[a-fA-F0-9]+")) {
      return new PNodeReference(SerializationUtil.longFromHex(serialized));
    }
//    return new SNodeReferenceAdapter(SNodePointer.deserialize(SerializationUtil.unescape(serialized)));
    throw new RuntimeException("Cannot deserialize concept: " + serialized);
  }
}
