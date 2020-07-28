package org.modelix.model.mpsplugin;



import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import com.intellij.ide.util.PropertiesComponent;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.modelix.model.lazy.TreeId;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import de.q60.mps.shadowmodels.runtime.smodel.NodeToSNodeAdapter;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import de.q60.mps.shadowmodels.runtime.model.persistent.PTree;
import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.smodel.SConceptAdapter;
import jetbrains.mps.smodel.MPSModuleRepository;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class CloudRepositories {
  private static final String SETTINGS_KEY = CloudRepositories.class.getName() + ".URLs";
  private static CloudRepositories ourInstance = new CloudRepositories();

  public static CloudRepositories getInstance() {
    return ourInstance;
  }

  private List<CloudRepository> repositories = ListSequence.fromList(new ArrayList<CloudRepository>());
  private Set<IListener> listeners = SetSequence.fromSet(new HashSet<IListener>());

  public CloudRepositories() {
    String urls = PropertiesComponent.getInstance().getValue(SETTINGS_KEY);
    if ((urls == null || urls.length() == 0)) {
      addRepository(RestWebModelClient.getDefaultUrl());
    } else {
      for (String url : urls.split("\n")) {
        if ((url == null || url.length() == 0)) {
          continue;
        }
        doAddRepository(url);
      }
    }
  }

  public void addListener(IListener l) {
    SetSequence.fromSet(listeners).addElement(l);
  }

  public void removeListener(IListener l) {
    SetSequence.fromSet(listeners).removeElement(l);
  }

  public CloudRepository addRepository(String url) {
    CloudRepository result = doAddRepository(url);
    storeUrls();
    return result;
  }

  protected void storeUrls() {
    PropertiesComponent.getInstance().setValue(SETTINGS_KEY, IterableUtils.join(ListSequence.fromList(repositories).select(new ISelector<CloudRepository, String>() {
      public String select(CloudRepository it) {
        return it.getBaseUrl();
      }
    }), "\n"));
  }

  protected CloudRepository doAddRepository(String url) {
    CloudRepository newRepo = ListSequence.fromList(repositories).addElement(new CloudRepository(url));
    for (IListener l : SetSequence.fromSet(listeners)) {
      l.repositoriesChanged();
    }
    return newRepo;
  }

  public void removeRepository(CloudRepository repo) {
    ListSequence.fromList(repositories).removeElement(repo);
    storeUrls();
    for (IListener l : SetSequence.fromSet(listeners)) {
      l.repositoriesChanged();
    }
  }

  public Iterable<CloudRepository> getRepositories() {
    return repositories;
  }

  public SNode resolveCloudModel(String treeId) {
    CloudRepository repo = Sequence.fromIterable(getRepositories()).where(new IWhereFilter<CloudRepository>() {
      public boolean accept(CloudRepository it) {
        return it.isConnected();
      }
    }).first();
    ActiveBranch activeBranch = repo.getActiveBranch(new TreeId(treeId));

    return SNodeOperations.cast(NodeToSNodeAdapter.wrap(new PNodeAdapter(PTree.ROOT_ID, activeBranch.getBranch()) {
      @Override
      public IConcept getConcept() {
        return SConceptAdapter.wrap(CONCEPTS.Repository$hO);
      }
    }, MPSModuleRepository.getInstance()), CONCEPTS.Repository$hO);
  }

  public void dispose() {
    for (CloudRepository repo : ListSequence.fromList(repositories)) {
      repo.dispose();
    }
    ListSequence.fromList(repositories).clear();
  }

  public interface IListener {
    void repositoriesChanged();
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Repository$hO = MetaAdapterFactory.getConcept(0xbf7bc3bb11d42e4L, 0xb16093d72af96397L, 0x69652614fd1c516L, "de.q60.mps.shadowmodels.runtimelang.structure.Repository");
  }
}
