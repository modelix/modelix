package org.modelix.model;



import org.modelix.model.lazy.IDeserializingKeyValueStore;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import org.jetbrains.annotations.NotNull;
import org.modelix.model.lazy.CLVersion;
import java.util.Objects;
import java.util.List;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.modelix.model.lazy.CLTree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.PBranch;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ILeftCombinator;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import org.modelix.model.operations.IAppliedOperation;
import java.util.ArrayList;
import gnu.trove.set.TLongSet;
import gnu.trove.set.hash.TLongHashSet;
import org.modelix.model.operations.IOperation;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.annotations.Nullable;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import org.modelix.model.persistent.CPVersion;

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

    final Wrappers._T<CLVersion> mergedVersion = new Wrappers._T<CLVersion>(null);

    CLTree tree = getVersion(commonBase).getTree();
    if (tree == null) {
      tree = new CLTree(storeCache);
    }
    final IBranch branch = new PBranch(tree);

    if (ListSequence.fromList(rightHistory).isEmpty() || ListSequence.fromList(leftHistory).isEmpty()) {
      List<CLVersion> fastForwardHistory = (ListSequence.fromList(leftHistory).isEmpty() ? rightHistory : leftHistory);
      int numOps = ListSequence.fromList(fastForwardHistory).foldLeft(0, new ILeftCombinator<CLVersion, Integer>() {
        public Integer combine(Integer s, CLVersion it) {
          return Math.max(0, it.getNumberOfOperations());
        }
      });
      if (numOps > 100) {
        return ListSequence.fromList(fastForwardHistory).first();
      }
      // A small number of changes may be faster to compute locally. 
    }

    branch.runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        IWriteTransaction t = branch.getWriteTransaction();

        List<IAppliedOperation> leftAppliedOps = ListSequence.fromList(new ArrayList<IAppliedOperation>());
        List<IAppliedOperation> rightAppliedOps = ListSequence.fromList(new ArrayList<IAppliedOperation>());
        TLongSet appliedVersionIds = new TLongHashSet();
        while (ListSequence.fromList(leftHistory).isNotEmpty() || ListSequence.fromList(rightHistory).isNotEmpty()) {
          boolean useLeft = ListSequence.fromList(rightHistory).isEmpty() || ListSequence.fromList(leftHistory).isNotEmpty() && ListSequence.fromList(leftHistory).last().getId() < ListSequence.fromList(rightHistory).last().getId();
          CLVersion versionToApply = (useLeft ? ListSequence.fromList(leftHistory).removeLastElement() : ListSequence.fromList(rightHistory).removeLastElement());
          if (appliedVersionIds.contains(versionToApply.getId())) {
            continue;
          }
          appliedVersionIds.add(versionToApply.getId());
          final Iterable<IOperation> oppositeAppliedOps = ListSequence.fromList(((useLeft ? rightAppliedOps : leftAppliedOps))).select(new ISelector<IAppliedOperation, IOperation>() {
            public IOperation select(IAppliedOperation it) {
              return it.getOriginalOp();
            }
          });
          List<IOperation> operationsToApply = Sequence.fromIterable(versionToApply.getOperations()).select(new ISelector<IOperation, IOperation>() {
            public IOperation select(IOperation it) {
              return transformOperation(it, oppositeAppliedOps);
            }
          }).toListSequence();
          for (IOperation op : ListSequence.fromList(operationsToApply)) {
            IAppliedOperation appliedOp = op.apply(t);
            if (useLeft) {
              ListSequence.fromList(leftAppliedOps).addElement(appliedOp);
            } else {
              ListSequence.fromList(rightAppliedOps).addElement(appliedOp);
            }
          }

          mergedVersion.value = new CLVersion(versionToApply.getId(), versionToApply.getTime(), versionToApply.getAuthor(), ((CLTree) t.getTree()).getHash(), (mergedVersion.value != null ? mergedVersion.value.getHash() : versionToApply.getPreviousHash()), ListSequence.fromList(operationsToApply).toGenericArray(IOperation.class), storeCache);
        }
      }
    });

    if (mergedVersion.value == null) {
      throw new RuntimeException("Failed to merge " + leftVersionHash + " and " + rightVersionHash);
    }

    return mergedVersion.value;
  }

  protected IOperation transformOperation(IOperation opToTransform, Iterable<IOperation> previousOps) {
    IOperation result = opToTransform;
    for (IOperation previous : Sequence.fromIterable(previousOps)) {
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
    List<CLVersion> history = ListSequence.fromList(new ArrayList<CLVersion>());
    if (Objects.equals(fromVersion, toVersionExclusive)) {
      return history;
    }
    CLVersion version = getVersion(fromVersion);
    while (true) {
      if (version == null) {
        break;
      }
      ListSequence.fromList(history).addElement(version);
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

    Set<String> leftVersions = SetSequence.fromSet(new HashSet<String>());
    Set<String> rightVersions = SetSequence.fromSet(new HashSet<String>());

    while (leftHash != null || rightHash != null) {
      if (leftHash != null) {
        SetSequence.fromSet(leftVersions).addElement(leftHash);
      }
      if (rightHash != null) {
        SetSequence.fromSet(rightVersions).addElement(rightHash);
      }

      if (leftHash != null) {
        if (SetSequence.fromSet(rightVersions).contains(leftHash)) {
          return leftHash;
        }
      }
      if (rightHash != null) {
        if (SetSequence.fromSet(leftVersions).contains(rightHash)) {
          return rightHash;
        }
      }

      if (leftHash != null) {
        leftHash = check_bh6rd5_a0a0g0e0s(getVersion(leftHash), this);
      }
      if (rightHash != null) {
        rightHash = check_bh6rd5_a0a0h0e0s(getVersion(rightHash), this);
      }
    }

    return null;
  }

  private CLVersion getVersion(String hash) {
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
  private static String check_bh6rd5_a0a0g0e0s(CLVersion checkedDotOperand, VersionMerger checkedDotThisExpression) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getPreviousHash();
    }
    return null;
  }
  private static String check_bh6rd5_a0a0h0e0s(CLVersion checkedDotOperand, VersionMerger checkedDotThisExpression) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getPreviousHash();
    }
    return null;
  }
}
