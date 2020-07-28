package org.modelix.model.mpsplugin;

import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.ModelAccess;
import com.intellij.openapi.application.ApplicationManager;

public class WriteAccessUtil {
  public static void runWrite(SRepository repo, final Runnable body) {
    ModelAccess modelAccess = repo.getModelAccess();
    if (modelAccess.canWrite()) {
      body.run();
    } else {
      if (modelAccess.canRead()) {
        ApplicationManager.getApplication().executeOnPooledThread(new Runnable() {
          public void run() {
            body.run();
          }
        });
      } else {
        modelAccess.runWriteAction(body);
      }
    }
  }
}
