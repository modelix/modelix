package org.modelix.gradle.model;

import org.gradle.api.DefaultTask;
import org.gradle.api.provider.Property;
import org.gradle.api.tasks.Input;
import org.gradle.api.tasks.TaskAction;

public abstract class DownloadModelFromModelixTask extends DefaultTask {
    @Input
    abstract public Property<String> mpsPath();

    @Input
    abstract public Property<String> mpsExtensionPath();

    @Input
    abstract public Property<String> modelixPath();

    @TaskAction
    public void downloadModelFromModelix() {
        System.out.println("==============================");
        System.out.println("Downloading Model from Modelix");
        System.out.println("==============================");
        System.out.println("  mps path            : " + mpsPath());
        System.out.println("  mps extensions path : " + mpsExtensionPath());
        System.out.println("  modelix path        : " + modelixPath());
    }
}
