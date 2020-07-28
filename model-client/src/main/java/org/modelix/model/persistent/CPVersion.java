package org.modelix.model.persistent;



import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.modelix.model.operations.IOperation;
import org.apache.log4j.Level;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class CPVersion {
  private static final Logger LOG = LogManager.getLogger(CPVersion.class);

  public final long id;
  public final String time;
  public final String author;

  /**
   * SHA to CPTree
   */
  public final String treeHash;
  public final String previousVersion;
  public final IOperation[] operations;
  public final String operationsHash;
  public final int numberOfOperations;

  public CPVersion(long id, String time, String author, String treeHash, String previousVersion, IOperation[] operations, String operationsHash, int numberOfOperations) {
    if ((treeHash == null || treeHash.length() == 0)) {
      if (LOG.isEnabledFor(Level.WARN)) {
        LOG.warn("No tree hash provided", new Exception());
      }
    }
    if ((operations == null) == (operationsHash == null)) {
      throw new RuntimeException("Only one of 'operations' and 'operationsHash' can be provided");
    }
    this.id = id;
    this.author = author;
    this.previousVersion = previousVersion;
    this.time = time;
    this.treeHash = treeHash;
    this.operations = operations;
    this.operationsHash = operationsHash;
    this.numberOfOperations = (operations != null ? operations.length : numberOfOperations);
  }

  public String serialize() {
    String opsPart = (operationsHash != null ? operationsHash : IterableUtils.join(Sequence.fromIterable(Sequence.fromArray(operations)).select(new ISelector<IOperation, String>() {
      public String select(IOperation it) {
        return OperationSerializer.INSTANCE.serialize(it);
      }
    }), ","));
    String serialized = SerializationUtil.longToHex(id) + "/" + SerializationUtil.escape(time) + "/" + SerializationUtil.escape(author) + "/" + SerializationUtil.nullAsEmptyString(treeHash) + "/" + SerializationUtil.nullAsEmptyString(previousVersion) + "/" + opsPart;
    if (numberOfOperations >= 0) {
      serialized += "/" + numberOfOperations;
    }
    return serialized;
  }

  public static CPVersion deserialize(String input) {
    String[] parts = input.split("/", -1);

    String opsHash = null;
    IOperation[] ops = null;
    if (HashUtil.isSha256(parts[5])) {
      opsHash = parts[5];
    } else {
      ops = Sequence.fromIterable(Sequence.fromArray(parts[5].split(","))).where(new IWhereFilter<String>() {
        public boolean accept(String it) {
          return (it != null && it.length() > 0);
        }
      }).select(new ISelector<String, IOperation>() {
        public IOperation select(String it) {
          return OperationSerializer.INSTANCE.deserialize(it);
        }
      }).toGenericArray(IOperation.class);
    }

    int numOps = (parts.length >= 7 ? Integer.parseInt(parts[6]) : -1);
    return new CPVersion(SerializationUtil.longFromHex(parts[0]), SerializationUtil.unescape(parts[1]), SerializationUtil.unescape(parts[2]), SerializationUtil.emptyStringAsNull(parts[3]), SerializationUtil.emptyStringAsNull(parts[4]), ops, opsHash, numOps);
  }

  public String getHash() {
    return HashUtil.sha256(this.serialize());
  }

}
