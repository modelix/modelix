package org.modelix.model.mpsplugin;



import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import de.q60.mps.shadowmodels.runtime.smodel.NodeToSNodeAdapter;
import de.q60.mps.shadowmodels.runtime.smodel.SNodeToNodeAdapter;
import de.q60.mps.shadowmodels.runtime.engine.DependencyTrackingNode;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.NotNullWhereFilter;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

public class TransactionUtil {
  public static IBranch extractBranch(Object obj) {
    if (obj instanceof PNodeAdapter) {
      return ((PNodeAdapter) obj).getBranch();
    } else if (obj instanceof NodeToSNodeAdapter) {
      return extractBranch(SNodeToNodeAdapter.wrap(((NodeToSNodeAdapter) obj)));
    } else if (obj instanceof DependencyTrackingNode) {
      return extractBranch(DependencyTrackingNode.unwrap(((DependencyTrackingNode) obj)));
    } else if (obj instanceof IBranch) {
      return (IBranch) obj;
    } else {
      return null;
    }
  }

  public static void runReadOnNodes(Iterable<Object> nodesToRead, Runnable r) {
    runReadOnBranches(Sequence.fromIterable(nodesToRead).select(new ISelector<Object, IBranch>() {
      public IBranch select(Object it) {
        return extractBranch(it);
      }
    }).where(new NotNullWhereFilter<IBranch>()), r);
  }

  public static void runReadOnBranches(final Iterable<IBranch> branchesToRead, final Runnable r) {
    if (Sequence.fromIterable(branchesToRead).isEmpty()) {
      r.run();
    } else {
      Sequence.fromIterable(branchesToRead).first().runRead(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          runReadOnBranches(Sequence.fromIterable(branchesToRead).skip(1), r);
        }
      });
    }
  }
}
