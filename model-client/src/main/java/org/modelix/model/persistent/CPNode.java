package org.modelix.model.persistent;

import org.modelix.model.util.pmap.COWArrays;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public class CPNode extends CPElement {
  private static final Logger LOG = LogManager.getLogger(CPNode.class);
  private static final long[] EMPTY_LONG_ARRAY = new long[0];
  public static final Function<String, CPNode> DESERIALIZER = s -> deserialize(s);

  public static CPNode create(long id, String concept, long parentId, String roleInParent, long[] childrenIds, String[] propertyRoles, String[] propertyValues, String[] referenceRoles, CPElementRef[] referenceTargets) {
    checkForDuplicates(childrenIds);
    if (propertyRoles.length != propertyValues.length) {
      throw new IllegalArgumentException(propertyRoles.length + " != " + propertyValues.length);
    }
    if (referenceRoles.length != referenceTargets.length) {
      throw new IllegalArgumentException(referenceRoles.length + " != " + referenceTargets.length);
    }
    return new CPNode(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, referenceRoles, referenceTargets);
  }

  private final long[] childrenIds;
  private final String concept;
  private String[] propertyRoles;
  private String[] propertyValues;
  private String[] referenceRoles;
  private CPElementRef[] referenceTargets;

  protected CPNode(long id1, String concept, long parentId1, String roleInParent1, long[] childrenIds1, String[] propertyRoles, String[] propertyValues, String[] referenceRoles, CPElementRef[] referenceTargets) {
    super(id1, parentId1, roleInParent1);

    this.childrenIds = childrenIds1;
    this.concept = concept;
    this.propertyRoles = propertyRoles;
    this.propertyValues = propertyValues;
    this.referenceRoles = referenceRoles;
    this.referenceTargets = referenceTargets;
  }

  private static void checkForDuplicates(long[] values) {
    long[] copy = new long[values.length];
    System.arraycopy(values, 0, copy, 0, values.length);
    Arrays.sort(copy);
    for (int i = 1; i < copy.length; i++) {
      if (copy[i - 1] == copy[i]) {
        throw new RuntimeException("Duplicate value: " + copy[i]);
      }
    }
  }

  @Override
  public String serialize() {
    StringBuilder sb = new StringBuilder();

    sb.append(SerializationUtil.longToHex(id));
    sb.append("/");
    sb.append(SerializationUtil.escape(concept));
    sb.append("/");
    sb.append(SerializationUtil.longToHex(parentId));
    sb.append("/");
    sb.append(SerializationUtil.escape(roleInParent));
    sb.append("/");
    sb.append(Arrays.stream(childrenIds).mapToObj(SerializationUtil::longToHex).reduce((a, b) -> a + ", " + b));
    sb.append("/");
    boolean first = true;
    {
      Iterator<String> role_it = Arrays.stream(propertyRoles).iterator();
      Iterator<String> value_it = Arrays.stream(propertyValues).iterator();
      String role_var;
      String value_var;
      while (role_it.hasNext() && value_it.hasNext()) {
        role_var = role_it.next();
        value_var = value_it.next();
        if (first) {
          first = false;
        } else {
          sb.append(",");
        }
        sb.append(SerializationUtil.escape(role_var)).append("=").append(SerializationUtil.escape(value_var));
      }
    }
    sb.append("/");
    first = true;
    {
      Iterator<String> role_it = Arrays.stream(referenceRoles).iterator();
      Iterator<CPElementRef> value_it = Arrays.stream(referenceTargets).iterator();
      String role_var;
      CPElementRef value_var;
      while (role_it.hasNext() && value_it.hasNext()) {
        role_var = role_it.next();
        value_var = value_it.next();
        if (first) {
          first = false;
        } else {
          sb.append(",");
        }
        sb.append(SerializationUtil.escape(role_var)).append("=").append(SerializationUtil.escape(value_var.toString()));
      }
    }

    return sb.toString();
  }

  public static CPNode deserialize(String input) {
    try {
      String[] parts = input.split("/", -1);

      List<String[]> properties = Arrays.stream(parts[5].split(","))
              .filter(StringUtils::isNotEmpty)
              .map(it -> it.split("=", -1))
              .collect(Collectors.toList());
      List<String[]> references = Arrays.stream(parts[6].split(","))
              .filter(StringUtils::isNotEmpty)
              .map(it -> it.split("=", -1))
              .collect(Collectors.toList());

      return new CPNode(
              SerializationUtil.longFromHex(parts[0]),
              SerializationUtil.unescape(parts[1]),
              SerializationUtil.longFromHex(parts[2]),
              SerializationUtil.unescape(parts[3]),
              Arrays.stream(parts[4].split(","))
                      .filter(StringUtils::isNotEmpty)
                      .mapToLong(SerializationUtil::longFromHex)
                      .toArray(),
              properties.stream().map(it -> SerializationUtil.unescape(it[0])).toArray(String[]::new),
              properties.stream().map(it -> SerializationUtil.unescape(it[1])).toArray(String[]::new),
              references.stream().map(it -> SerializationUtil.unescape(it[0])).toArray(String[]::new),
              references.stream()
                      .map(it -> CPElementRef.fromString(SerializationUtil.unescape(it[1])))
                      .toArray(CPElementRef[]::new)
      );
    } catch (Exception ex) {
      throw new RuntimeException("Failed to deserialize " + input, ex);
    }
  }

  public Iterable<Long> getChildrenIds() {
    return Arrays.stream(childrenIds)::iterator;
  }

  public long[] getChildrenIdArray() {
    return COWArrays.copy(childrenIds);
  }

  public int getChildrenSize() {
    return childrenIds.length;
  }

  public long getChildId(int index) {
    return childrenIds[index];
  }

  public String getConcept() {
    return concept;
  }

  public String getPropertyValue(String role) {
    int index = Arrays.binarySearch(propertyRoles, role);
    return (index < 0 ? null : propertyValues[index]);
  }

  public CPElementRef getReferenceTarget(String role) {
    int index = Arrays.binarySearch(referenceRoles, role);
    return (index < 0 ? null : referenceTargets[index]);
  }

  public CPNode withPropertyValue(String role, String value) {
    int index = Arrays.binarySearch(propertyRoles, role);
    if (value == null) {
      if (index < 0) {
        return this;
      } else {
        return create(id, concept, parentId, roleInParent, childrenIds, COWArrays.INSTANCE.removeAt(propertyRoles, index), COWArrays.INSTANCE.removeAt(propertyValues, index), referenceRoles, referenceTargets);
      }
    } else {
      if (index < 0) {
        index = -(index + 1);
        return create(id, concept, parentId, roleInParent, childrenIds, COWArrays.INSTANCE.insert(propertyRoles, index, role), COWArrays.INSTANCE.insert(propertyValues, index, value), referenceRoles, referenceTargets);
      } else {
        return create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, COWArrays.INSTANCE.set(propertyValues, index, value), referenceRoles, referenceTargets);
      }
    }
  }

  public CPNode withReferenceTarget(String role, CPElementRef target) {
    int index = Arrays.binarySearch(referenceRoles, role);
    if (target == null) {
      if (index < 0) {
        return this;
      } else {
        return create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, COWArrays.INSTANCE.removeAt(referenceRoles, index), COWArrays.INSTANCE.removeAt(referenceTargets, index));
      }
    } else {
      if (index < 0) {
        index = -(index + 1);
        return create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, COWArrays.INSTANCE.insert(referenceRoles, index, role), COWArrays.INSTANCE.insert(referenceTargets, index, target));
      } else {
        return create(id, concept, parentId, roleInParent, childrenIds, propertyRoles, propertyValues, referenceRoles, COWArrays.INSTANCE.set(referenceTargets, index, target));
      }
    }
  }

  public String[] getPropertyRoles() {
    return this.propertyRoles;
  }
  public String[] getPropertyValues() {
    return this.propertyValues;
  }
  public String[] getReferenceRoles() {
    return this.referenceRoles;
  }
  public CPElementRef[] getReferenceTargets() {
    return this.referenceTargets;
  }
}
