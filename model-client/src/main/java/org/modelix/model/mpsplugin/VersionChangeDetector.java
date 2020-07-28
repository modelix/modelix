package org.modelix.model.mpsplugin;



import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.modelix.model.IKeyListener;
import org.modelix.model.IKeyValueStore;
import java.util.concurrent.ScheduledFuture;
import java.util.Objects;
import org.apache.log4j.Level;

public abstract class VersionChangeDetector {
  private static final Logger LOG = LogManager.getLogger(VersionChangeDetector.class);
  private IKeyListener keyListener;
  private IKeyValueStore store;
  private String lastKnownVersion;
  private final String key;
  private ScheduledFuture<?> pollingTask;

  public VersionChangeDetector(final IKeyValueStore store, final String key) {
    this.store = store;
    this.key = key;
    keyListener = new IKeyListener() {
      @Override
      public void changed(String key, String versionHash) {
        if (LOG.isDebugEnabled()) {
          LOG.debug("Listener received new version " + versionHash);
        }
        versionChanged(versionHash);
      }
    };
    SharedExecutors.FIXED.execute(new Runnable() {
      public void run() {
        store.listen(key, keyListener);
      }
    });
    pollingTask = SharedExecutors.fixDelay(3000, new Runnable() {
      public void run() {
        String version = store.get(key);
        if (Objects.equals(version, lastKnownVersion)) {
          return;
        }
        if (LOG.isDebugEnabled()) {
          LOG.debug("New version detected by polling: " + version);
        }
        versionChanged(version);
      }
    });
  }

  private void versionChanged(String newVersion) {
    if (Objects.equals(newVersion, lastKnownVersion)) {
      return;
    }
    try {
      processVersionChange(lastKnownVersion, newVersion);
    } catch (Exception ex) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("", ex);
      }
    }
    lastKnownVersion = newVersion;
  }

  protected abstract void processVersionChange(String oldVersion, String newVersion);

  public void dispose() {
    pollingTask.cancel(false);
    store.removeListener(key, keyListener);
  }

  public String getLastVersionHash() {
    return lastKnownVersion;
  }
}
