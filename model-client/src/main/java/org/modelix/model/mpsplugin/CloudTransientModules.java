package org.modelix.model.mpsplugin;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.extapi.module.SRepositoryExt;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.apache.log4j.Level;

public class CloudTransientModules {
  private static final Logger LOG = LogManager.getLogger(CloudTransientModules.class);

  private static CloudTransientModules ourInstance = new CloudTransientModules(MPSModuleRepository.getInstance());

  public static CloudTransientModules getInstance() {
    return ourInstance;
  }

  private SRepositoryExt mpsRepository;
  private List<CloudTransientModule> modules = ListSequence.fromList(new ArrayList<CloudTransientModule>());
  private final MPSModuleOwner moduleOwner = new MPSModuleOwner() {
    public boolean isHidden() {
      return false;
    }
  };

  public CloudTransientModules(SRepositoryExt mpsRepository) {
    this.mpsRepository = mpsRepository;
  }

  public CloudTransientModule createModule(final String name, final ModuleId id) {
    final Wrappers._T<CloudTransientModule> module = new Wrappers._T<CloudTransientModule>(null);
    mpsRepository.getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        module.value = new CloudTransientModule(name, id);
        ListSequence.fromList(modules).addElement(module.value);
        if (LOG.isDebugEnabled()) {
          LOG.debug("Register module " + id);
        }
        mpsRepository.registerModule(module.value, moduleOwner);
      }
    });
    return module.value;
  }

  public void disposeModule(final CloudTransientModule module) {
    mpsRepository.getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        doDisposeModule(module);
        ListSequence.fromList(modules).removeElement(module);
      }
    });
  }

  protected void doDisposeModule(CloudTransientModule module) {
    if (module.getRepository() != null) {
      if (LOG.isDebugEnabled()) {
        LOG.debug("Unregister module " + module.getModuleId());
      }
      mpsRepository.unregisterModule(module, moduleOwner);
    }
    Iterable<SModel> models = module.getModels();
    for (CloudTransientModel model : Sequence.fromIterable(models).ofType(CloudTransientModel.class)) {
      model.dispose();
    }
  }

  public void dispose() {
    WriteAccessUtil.runWrite(mpsRepository, new Runnable() {
      public void run() {
        try {
          for (CloudTransientModule module : ListSequence.fromList(modules)) {
            doDisposeModule(module);
          }
          ListSequence.fromList(modules).clear();
        } catch (Exception ex) {
          if (LOG.isEnabledFor(Level.ERROR)) {
            LOG.error("", ex);
          }
        }
      }
    });
  }

}
