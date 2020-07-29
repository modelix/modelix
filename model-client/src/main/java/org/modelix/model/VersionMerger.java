package org.modelix.model;

import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.PBranch;
import gnu.trove.set.TLongSet;
import gnu.trove.set.hash.TLongHashSet;
import org.apache.commons.lang3.mutable.MutableObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.modelix.StreamUtil;
import org.modelix.model.lazy.CLTree;
import org.modelix.model.lazy.CLVersion;
import org.modelix.model.lazy.IDeserializingKeyValueStore;
import org.modelix.model.operations.IAppliedOperation;
import org.modelix.model.operations.IOperation;
import org.modelix.model.persistent.CPVersion;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

public class VersionMerger {

  private final Object mergeLock = new Object();

  private IDeserializingKeyValueStore storeCache;
  private IIdGenerator idGenerator;

  public VersionMerger(IDeserializingKeyValueStore storeCache, IIdGenerator idGenerator) {
    this.storeCache = storeCache;
    this.idGenerator = idGenerator;
  }

  @NotNull
  public CLVersion mergeChange(CLVersion lastMergedVersion, @NotNull CLVersion newVersion) {
    synchronized (mergeLock) {
      if (lastMergedVersion == null) {
        lastMergedVersion = newVersion;
        return newVersion;
      } else {
        if (Objects.equals(newVersion.getHash(), lastMergedVersion.getHash())) {
          return lastMergedVersion;
        }
        CLVersion merged = mergeHistory(lastMergedVersion.getHash(), newVersion.getHash());
        checkTreeIds(lastMergedVersion, newVersion);
        return merged;
      }
    }
  }

  public void checkTreeIds(CLVersion v1, CLVersion v2) {
    String id1 = v1.getTree().getId();
    String id2 = v2.getTree().getId();
    if (!(Objects.equals(id1, id2))) {
      throw new RuntimeException("Tree ID mismatch: " + id1 + " and " + id2);
    }
  }

  @NotNull
  protected CLVersion mergeHistory(String leftVersionHash, String rightVersionHash) {
    String commonBase = commonBaseVersion(leftVersionHash, rightVersionHash);

    final List<CLVersion> leftHistory = getHistory(leftVersionHash, commonBase);
    final List<CLVersion> rightHistory = getHistory(rightVersionHash, commonBase);

    final MutableObject<CLVersion> mergedVersion = new MutableObject<>();

    CLTree tree = getVersion(commonBase).getTree();
    if (tree == null) {
      tree = new CLTree(storeCache);
    }
    final IBranch branch = new PBranch(tree);

    if (rightHistory.isEmpty() || leftHistory.isEmpty()) {
      List<CLVersion> fastForwardHistory = leftHistory.isEmpty() ? rightHistory : leftHistory;
      int numOps = fastForwardHistory.stream().map(CLVersion::getNumberOfOperations).reduce(0, Math::max);
      if (numOps > 100) {
        return fastForwardHistory.get(0);
      }
      // A small number of changes may be faster to compute locally. 
    }

    branch.runWrite(() -> {
      IWriteTransaction t = branch.getWriteTransaction();

      List<IAppliedOperation> leftAppliedOps = new ArrayList<>();
      List<IAppliedOperation> rightAppliedOps = new ArrayList<>();
      TLongSet appliedVersionIds = new TLongHashSet();
      while (!leftHistory.isEmpty() || !rightHistory.isEmpty()) {
        boolean useLeft = rightHistory.isEmpty() || !leftHistory.isEmpty() && StreamUtil.last(leftHistory).getId() < StreamUtil.last(rightHistory).getId();
        CLVersion versionToApply = StreamUtil.removeLast(useLeft ? leftHistory : rightHistory);
        if (appliedVersionIds.contains(versionToApply.getId())) {
          continue;
        }
        appliedVersionIds.add(versionToApply.getId());
        final List<IOperation> oppositeAppliedOps = (useLeft ? rightAppliedOps : leftAppliedOps).stream()
                .map(IAppliedOperation::getOriginalOp)
                .collect(Collectors.toList());
        List<IOperation> operationsToApply = StreamUtil.toStream(versionToApply.getOperations())
                .map(it -> transformOperation(it, oppositeAppliedOps))
                .collect(Collectors.toList());
        for (IOperation op : operationsToApply) {
          IAppliedOperation appliedOp = op.apply(t);
          if (useLeft) {
            leftAppliedOps.add(appliedOp);
          } else {
            rightAppliedOps.add(appliedOp);
          }
        }

        mergedVersion.setValue(new CLVersion(
                versionToApply.getId(),
                versionToApply.getTime(),
                versionToApply.getAuthor(),
                ((CLTree) t.getTree()).getHash(),
                mergedVersion.getValue() != null
                        ? mergedVersion.getValue().getHash()
                        : versionToApply.getPreviousHash(),
                operationsToApply.toArray(new IOperation[operationsToApply.size()]),
                storeCache
        ));
      }
    });

    if (mergedVersion.getValue() == null) {
      throw new RuntimeException("Failed to merge " + leftVersionHash + " and " + rightVersionHash);
    }

    return mergedVersion.getValue();
  }

  protected IOperation transformOperation(IOperation opToTransform, Iterable<IOperation> previousOps) {
    IOperation result = opToTransform;
    for (IOperation previous : previousOps) {
      result = result.transform(previous);
    }
    return result;
  }

  /**
   * 
   * 
   * @param fromVersion The newest version
   * @param toVersionExclusive The oldest version
   * @return Newest version first
   */
  protected List<CLVersion> getHistory(@NotNull String fromVersion, @Nullable String toVersionExclusive) {
    List<CLVersion> history = new ArrayList<CLVersion>();
    if (Objects.equals(fromVersion, toVersionExclusive)) {
      return history;
    }
    CLVersion version = getVersion(fromVersion);
    while (true) {
      if (version == null) {
        break;
      }
      history.add(version);
      if (version.getPreviousHash() == null) {
        break;
      }
      if (Objects.equals(version.getPreviousHash(), toVersionExclusive)) {
        break;
      }
      version = version.getPreviousVersion();
    }
    return history;
  }

  protected String commonBaseVersion(String leftHash, String rightHash) {

    Set<String> leftVersions = new HashSet<>();
    Set<String> rightVersions = new HashSet<>();

    while (leftHash != null || rightHash != null) {
      if (leftHash != null) {
        leftVersions.add(leftHash);
      }
      if (rightHash != null) {
        rightVersions.add(rightHash);
      }

      if (leftHash != null) {
        if (rightVersions.contains(leftHash)) {
          return leftHash;
        }
      }
      if (rightHash != null) {
        if (leftVersions.contains(rightHash)) {
          return rightHash;
        }
      }

      if (leftHash != null) {
        leftHash = Optional.ofNullable(getVersion(leftHash)).map(CLVersion::getPreviousHash).orElse(null);
      }
      if (rightHash != null) {
        rightHash = Optional.ofNullable(getVersion(rightHash)).map(CLVersion::getPreviousHash).orElse(null);
      }
    }

    return null;
  }

  private @Nullable CLVersion getVersion(String hash) {
    if (hash == null) {
      return null;
    }
    return CLVersion.loadFromHash(hash, storeCache);
  }

  protected ITree getTree(CPVersion version) {
    if (version == null) {
      return null;
    }
    return new CLTree(version.treeHash, storeCache);
  }
}
