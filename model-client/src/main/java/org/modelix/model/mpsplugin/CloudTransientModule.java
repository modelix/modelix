package org.modelix.model.mpsplugin;



import jetbrains.mps.project.AbstractModule;
import de.q60.mps.shadowmodels.runtime.util.IUserObjectContainer;
import jetbrains.mps.extapi.module.TransientSModule;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import de.q60.mps.shadowmodels.runtime.util.pmap.CustomPMap;
import de.q60.mps.shadowmodels.runtime.util.pmap.SmallPMap;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.vfs.IFile;
import de.q60.mps.shadowmodels.runtime.util.UserObjectKey;
import org.jetbrains.annotations.Nullable;
import java.util.Set;

public class CloudTransientModule extends AbstractModule implements IUserObjectContainer, TransientSModule {
  private final ModuleDescriptor myDescriptor;
  private CustomPMap<Object, Object> userObjects = SmallPMap.empty();

  public CloudTransientModule(String name, ModuleId id) {
    super((IFile) null);
    myDescriptor = new ModuleDescriptor();
    myDescriptor.setId(id);
    myDescriptor.setNamespace(name);
    setModuleReference(myDescriptor.getModuleReference());
  }
  @Override
  public <T> T getUserObject(UserObjectKey<T> key) {
    return (T) userObjects.get(key);
  }
  @Override
  public <T> void putUserObject(UserObjectKey<T> key, T value) {
    userObjects = userObjects.put(key, value);
  }
  @Nullable
  @Override
  public ModuleDescriptor getModuleDescriptor() {
    return myDescriptor;
  }
  @Override
  protected void collectMandatoryFacetTypes(Set<String> types) {
  }
  @Override
  public boolean isPackaged() {
    return false;
  }
  @Override
  public boolean isReadOnly() {
    return false;
  }
}
