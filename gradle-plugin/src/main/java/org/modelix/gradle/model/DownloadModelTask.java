package org.modelix.gradle.model;

import org.gradle.api.DefaultTask;
import org.gradle.api.tasks.TaskAction;

import javax.swing.*;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class DownloadModelTask extends DefaultTask {

    private String serverUrl;
    private String treeId;
    private File mpsFolder;
    private File modelPluginFolder;

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

    public File getMpsFolder() {
        return mpsFolder;
    }

    public void setMpsFolder(File mpsFolder) {
        this.mpsFolder = mpsFolder;
    }

    public File getModelPluginFolder() {
        return modelPluginFolder;
    }

    public void setModelPluginFolder(File modelPluginFolder) {
        this.modelPluginFolder = modelPluginFolder;
    }

    @TaskAction
    public void downloadModel() {
        System.out.println("MPS folder: " + mpsFolder);
        System.out.println("modelix model plugin folder: " + modelPluginFolder);
        System.out.println("Downloading tree " + getTreeId() + " from " + getServerUrl() + " ...");
        try {
            System.setProperty("modelix.export.path", new File("generatedModules").getAbsolutePath());
            EnvironmentLoader.loadEnvironment((File) null);
            new Timer(60000, e -> {
                if ("true".equals(System.getProperty("modelix.export.started"))) return;
                System.out.println("Export timeout");
                System.exit(2);
            }).start();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
            System.exit(1);
        }
    }

}
