package org.modelix.model.mpsplugin.plugin;



import jetbrains.mps.plugins.part.ProjectPluginPart;
import jetbrains.mps.project.MPSProject;
import org.modelix.model.mpsplugin.projectview.CloudProjectViewExtension;

public class ProjectPlugin_ProjectPluginPart extends ProjectPluginPart {
  public ProjectPlugin_ProjectPluginPart() {
  }
  @Override
  public void init(MPSProject project) {
    CloudProjectViewExtension.getInstance(project).init();
  }
  @Override
  public void dispose(MPSProject project) {
    CloudProjectViewExtension.getInstance(project).dispose();
  }
}
