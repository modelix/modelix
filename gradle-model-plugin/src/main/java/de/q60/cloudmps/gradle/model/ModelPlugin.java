package de.q60.cloudmps.gradle.model;

import org.gradle.api.Plugin;
import org.gradle.api.Project;

public class ModelPlugin implements Plugin<Project> {
    @Override
    public void apply(Project project) {
        project.getTasks().create("downloadModel", DownloadModelTask.class);
    }
}
