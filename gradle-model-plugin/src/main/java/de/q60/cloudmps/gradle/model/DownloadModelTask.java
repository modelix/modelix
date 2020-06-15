package de.q60.cloudmps.gradle.model;

import org.gradle.api.DefaultTask;
import org.gradle.api.tasks.TaskAction;

public class DownloadModelTask extends DefaultTask {

    @TaskAction
    public void downloadModel() {
        System.out.println("Downloading model ...");
        System.out.println("Done.");
    }

}
