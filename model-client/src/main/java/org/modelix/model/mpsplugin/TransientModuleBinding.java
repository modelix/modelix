package org.modelix.model.mpsplugin;



import java.util.concurrent.atomic.AtomicInteger;
import java.util.Map;
import de.q60.mps.shadowmodels.runtime.model.INode;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import org.modelix.model.lazy.TreeId;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import jetbrains.mps.project.ModuleId;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITreeChangeVisitor;
import jetbrains.mps.smodel.MPSModuleRepository;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.internal.collections.runtime.IMapping;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class TransientModuleBinding extends ModelBinding {
  private static final AtomicInteger NAME_SEQUENCE = new AtomicInteger(0);

  private String moduleName = null;


  private CloudRepository cloudRepository;
  private CloudTransientModule transientModule;
  private ActiveBranch activeBranch;
  private Map<INode, SModel> models = MapSequence.fromMap(new HashMap<INode, SModel>());

  public TransientModuleBinding(TreeId treeId, long nodeId) {
    super(treeId, nodeId);
  }

  @Override
  public void activate(CloudRepository cloudRepository) {
    this.cloudRepository = cloudRepository;
    activeBranch = cloudRepository.getActiveBranch(treeId);
    final IBranch branch = activeBranch.getBranch();
    moduleName = branch.computeRead(new _FunctionTypes._return_P0_E0<String>() {
      public String invoke() {
        return new PNodeAdapter(nodeId, branch).getPropertyValue(PROPS.name$tAp1.getName());
      }
    });
    if ((moduleName == null || moduleName.length() == 0)) {
      moduleName = "cloud.module" + NAME_SEQUENCE.incrementAndGet();
    }
    ModuleId moduleId = ModuleId.foreign(cloudRepository.getId() + "-" + treeId + "-" + Long.toHexString(nodeId));
    transientModule = CloudTransientModules.getInstance().createModule(moduleName, moduleId);
    activeBranch.addListener(new IBranchListener() {
      @Override
      public void treeChanged(ITree oldTree, ITree newTree) {
        final boolean[] syncRequired = new boolean[1];
        syncRequired[0] = false;
        newTree.visitChanges(oldTree, new ITreeChangeVisitor() {
          @Override
          public void containmentChanged(long nodeId) {
          }

          @Override
          public void childrenChanged(long nodeId, String role) {
            if (nodeId == TransientModuleBinding.this.nodeId) {
              syncRequired[0] = true;
            }
          }

          @Override
          public void referenceChanged(long nodeId, String role) {
          }

          @Override
          public void propertyChanged(long nodeId, String role) {
          }

          @Override
          public void userObjectChanged(long nodeId, Object key) {
          }

          @Override
          public void nodeRemoved(long nodeId) {
          }

          @Override
          public void nodeAdded(long nodeId) {
          }

          @Override
          public void nodeLoaded(long nodeId) {
          }

          @Override
          public void nodeUnloaded(long nodeId) {
          }
        });
        if (syncRequired[0]) {
          syncModels();
        }
      }
    });
    syncModels();
  }

  protected void syncModels() {
    final IBranch branch = activeBranch.getBranch();
    branch.runRead(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        MPSModuleRepository.getInstance().getModelAccess().runWriteAction(new Runnable() {
          public void run() {
            List<INode> expectedModels = Sequence.fromIterable(new PNodeAdapter(nodeId, branch).getChildren(LINKS.models$eONu.getName())).toListSequence();
            Map<INode, SModel> modelsToRemove = new HashMap<INode, SModel>(models);

            for (INode modelNode : ListSequence.fromList(expectedModels)) {
              MapSequence.fromMap(modelsToRemove).removeKey(modelNode);
              SModel model = MapSequence.fromMap(models).get(modelNode);
              if (model == null) {
                String name = modelNode.getPropertyValue(PROPS.name$tAp1.getName());
                long modelNodeId = ((PNodeAdapter) modelNode).getNodeId();
                model = new CloudTransientModel(transientModule, name, SModelId.foreign(cloudRepository.getId() + "-" + treeId + "-" + Long.toHexString(modelNodeId)), activeBranch, modelNodeId);
                transientModule.registerModel((SModelBase) model);
                MapSequence.fromMap(models).put(modelNode, model);
              }
            }

            for (IMapping<INode, SModel> modelToRemove : MapSequence.fromMap(modelsToRemove)) {
              transientModule.unregisterModel((SModelBase) modelToRemove.value());
              MapSequence.fromMap(models).removeKey(modelToRemove.key());
            }
          }
        });
      }
    });
  }

  @Override
  public void deactivate() {
    MPSModuleRepository.getInstance().getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        CloudTransientModules.getInstance().disposeModule(transientModule);
      }
    });
  }

  @Override
  public SModule getModule() {
    return transientModule;
  }

  @Override
  public String toString() {
    return treeId + "/" + Long.toHexString(nodeId) + " -> " + moduleName;
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$tAp1 = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink models$eONu = MetaAdapterFactory.getContainmentLink(0xbf7bc3bb11d42e4L, 0xb16093d72af96397L, 0x69652614fd1c50fL, 0x69652614fd1c512L, "models");
  }
}
