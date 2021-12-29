package org.modelix.gradle.model;

import org.gradle.api.Action;
import org.gradle.api.DefaultTask;
import org.gradle.api.Plugin;
import org.gradle.api.Project;
import org.gradle.api.Task;
import org.gradle.api.artifacts.Configuration;
import org.gradle.api.file.RelativePath;
import org.gradle.api.tasks.Copy;
import org.gradle.api.tasks.JavaExec;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.time.Duration;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Properties;
import java.util.jar.Manifest;
import java.util.stream.Collectors;

public class ModelPlugin implements Plugin<Project> {
    @Override
    public void apply(Project project_) {
        System.out.println("modelix model plugin loaded");
        Manifest manifest = readManifest();
        ModelixModelSettings settings = project_.getExtensions().create("modelixModel", ModelixModelSettings.class);
        String modelixVersion = manifest.getMainAttributes().getValue("modelix-Version");
        System.out.println("Using modelix Version " + modelixVersion);
        String extensionsVersion = manifest.getMainAttributes().getValue("MPS-extensions-Version");
        System.out.println("Using MPS-extensions version " + extensionsVersion);
        project_.afterEvaluate((Project project) -> {
            System.out.println("modelix model plugin loaded for project " + project.getDisplayName());

            Configuration genConfig = project.getConfigurations().detachedConfiguration(
                    project.getDependencies().create("org.modelix:gradle-plugin:" + modelixVersion)
            );

            Task setupTask = project.getTasks().create("setupModelixExport", task -> {
                final boolean usingExistingMPS = settings.getMpsPath() != null;
                if (usingExistingMPS) {
                    System.out.println("no setup needed for Modelix export because using existing MPS");
                } else {
                    System.out.println("setup needed for Modelix export because not using existing MPS");
                    String mpsVersion = manifest.getMainAttributes().getValue("MPS-Version");
                    Configuration mpsConfig = project.getConfigurations().detachedConfiguration(
                            project.getDependencies().create("com.jetbrains:mps:" + mpsVersion )
                    );
                    settings.setMpsConfig(mpsConfig);
                    Configuration pluginsConfig = project.getConfigurations().detachedConfiguration(
                            project.getDependencies().create("de.itemis.mps:extensions:" + extensionsVersion),
                            project.getDependencies().create("org.modelix:mps-model-plugin:" + modelixVersion));
                    settings.setPluginsConfig(pluginsConfig);
                }
            });

            Copy copyMpsTask = project.getTasks().create("copyMpsForModelixExport", Copy.class, copy -> {
                copy.dependsOn(setupTask);
                final boolean usingExistingMPS = settings.getMpsPath() != null;
                if (usingExistingMPS) {
                    System.out.println("no need to copy MPS, reusing MPS at " + settings.getMpsPath());
                } else {
                    Configuration mpsConfig = settings.getMpsConfig();
                    copy.from(mpsConfig.resolve().stream().map(project::zipTree).collect(Collectors.toList()));
                    copy.into(new File("mpsForModelixExport"));
                }
            });
            Copy copyMpsModelPluginTask = project.getTasks().create("copyMpsModelPluginForModelixExport", Copy.class, copy -> {
                copy.dependsOn(copyMpsTask);
                final boolean usingExistingMPS = settings.getMpsPath() != null;
                if (usingExistingMPS) {
                    System.out.println("no need to copy plugins into MPS, as we are reusing MPS at " + settings.getMpsPath());
                } else {
                    Configuration pluginsConfig = settings.getPluginsConfig();
                    copy.from(pluginsConfig.resolve().stream().map(it -> project.zipTree(it)).collect(Collectors.toList()));
                    copy.eachFile(fcd -> {
                        if (fcd.getRelativePath().getSegments()[0].equals("de.itemis.mps.extensions")) {
                            // remove first folder from output path
                            fcd.setRelativePath(new RelativePath(true, Arrays.stream(fcd.getRelativePath().getSegments()).skip(1).toArray(String[]::new)));
                        }
                    });
                    copy.into(new File(new File("mpsForModelixExport"), "plugins"));
                }
            });

            project.getTasks().create("downloadModel", JavaExec.class, javaExec -> {
                final boolean usingExistingMPS = settings.getMpsPath() != null;
                File mpsLocation = usingExistingMPS ? new File(settings.getMpsPath()) : new File("mpsForModelixExport");
                File mpsExtensionsLocation = usingExistingMPS ? new File(settings.getMpsExtensionsArtifactsPath()) : new File(new File("mpsForModelixExport"), "plugins");
                File modelixLocation = usingExistingMPS ? new File(settings.getModelixArtifactsPath()) : new File(new File("mpsForModelixExport"), "plugins");
                javaExec.dependsOn(setupTask, copyMpsTask, copyMpsModelPluginTask);
                javaExec.setDescription("Export models from modelix model server to MPS files");
                javaExec.classpath(project.fileTree(new File(mpsLocation, "lib")).include("**/*.jar"));
                javaExec.classpath(genConfig);
                javaExec.args(
                        "serverUrl", settings.getServerUrl(),
                        "repositoryId", settings.getRepositoryId(),
                        "branchName", settings.getBranchName(),
                        "mpsExtensionsPath", mpsExtensionsLocation.getAbsolutePath(),
                        "modelixPath", modelixLocation.getAbsolutePath()
                );
                if (settings.isDebug()) javaExec.setDebug(true);
                javaExec.getTimeout().set(Duration.ofSeconds(settings.getTimeout()));
                javaExec.setMain(ExportMain.class.getName());
            });
        });
    }

    private Manifest readManifest() {
        Enumeration<URL> resources = null;
        try {
            resources = getClass().getClassLoader().getResources("META-INF/MANIFEST.MF");
            while (resources.hasMoreElements()) {
                try {
                    Manifest manifest = new Manifest(resources.nextElement().openStream());
                    if (manifest.getMainAttributes().getValue("modelix-Version") != null) {
                        return manifest;
                    }
                } catch (IOException ex) {
                    throw new RuntimeException("Failed to read MANIFEST.MF", ex);
                }
            }
        } catch (IOException ex) {
            throw new RuntimeException("Failed to read MANIFEST.MF", ex);
        }
        throw new RuntimeException("No MANIFEST.MF found containing 'modelix-Version'");
    }
}

