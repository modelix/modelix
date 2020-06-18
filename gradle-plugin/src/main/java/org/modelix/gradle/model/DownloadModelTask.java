package org.modelix.gradle.model;

import org.gradle.api.DefaultTask;
import org.gradle.api.tasks.TaskAction;

public class DownloadModelTask extends DefaultTask {

    private String serverUrl;
    private String treeId;

    public String getServerUrl() {
        return serverUrl;
    }

    public void setServerUrl(String serverUrl) {
        this.serverUrl = serverUrl;
    }

    public String getTreeId() {
        return treeId;
    }

    public void setTreeId(String treeId) {
        this.treeId = treeId;
    }

    @TaskAction
    public void downloadModel() {
        System.out.println("modelix gradle plugin");
        System.out.println("Downloading tree " + getTreeId() + " from " + getServerUrl() + " ...");
        System.out.println("Done.");
    }

}
