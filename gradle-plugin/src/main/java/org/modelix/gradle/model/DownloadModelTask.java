package org.modelix.gradle.model;

import org.gradle.api.DefaultTask;
import org.gradle.api.tasks.TaskAction;

public class DownloadModelTask extends DefaultTask {

    @TaskAction
    public void downloadModel() {
        System.out.println("modelix gradle plugin");
        System.out.println("Downloading model ...");
        System.out.println("Done.");
    }

}
