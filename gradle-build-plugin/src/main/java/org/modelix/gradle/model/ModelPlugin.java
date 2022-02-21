package org.modelix.gradle.model;

import org.gradle.api.Action;
import org.gradle.api.Plugin;
import org.gradle.api.Project;
import org.gradle.api.Task;
import org.gradle.api.artifacts.Configuration;
import org.gradle.api.file.RelativePath;
import org.gradle.api.tasks.Copy;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.jar.Manifest;
import java.util.stream.Collectors;

public class ModelPlugin implements Plugin<Project> {

    @Override
    public void apply(Project project_) {
        MPSBuildSettings settings = project_.getExtensions().create("mpsBuild", MPSBuildSettings.class);
        project_.afterEvaluate((Project project) -> {
            settings.validate();

            Manifest manifest = readManifest();
            String modelixVersion = manifest.getMainAttributes().getValue("modelix-Version");
            Configuration genConfig = project.getConfigurations().detachedConfiguration(
                project.getDependencies().create("org.modelix:workspace-manager:" + modelixVersion)
            );

            final Configuration mpsConfig;
            final Configuration pluginsConfig;
            if (settings.usingExistingMps()) {
                mpsConfig = null;
                pluginsConfig = null;
                // We are using an existing MPS. We also expect the user to add the version of MPS Extensions and
                // Modelix that they intend to use
            } else {
                // We are not using an existing MPS, therefore we will add one and we will add dependencies
                // to MPS Extensions and Modelix as well
                String mpsVersion = manifest.getMainAttributes().getValue("MPS-Version");
                String extensionsVersion = manifest.getMainAttributes().getValue("MPS-extensions-Version");
                mpsConfig = project.getConfigurations().detachedConfiguration(
                        project.getDependencies().create("com.jetbrains:mps:" + mpsVersion )
                );
                pluginsConfig = project.getConfigurations().detachedConfiguration(
                        project.getDependencies().create("de.itemis.mps:extensions:" + extensionsVersion),
                        project.getDependencies().create("org.modelix:mps-model-plugin:" + modelixVersion));
            }

            final Copy copyMpsTask;
            final Copy copyMpsModelPluginTask;
            if (settings.usingExistingMps()) {
                copyMpsTask = null;
                copyMpsModelPluginTask = null;
                // When using an existing MPS we do not need to copy plugins
            } else {
                // When not using an existing MPS we do need to copy plugins under the downloaded MPS
                copyMpsTask = project.getTasks().create("copyMpsForModelixExport", Copy.class, copy -> {
                    copy.from(mpsConfig.resolve().stream().map(project::zipTree).collect(Collectors.toList()));
                    copy.into(new File("mpsForModelixExport"));
                });
                copyMpsModelPluginTask = project.getTasks().create("copyMpsModelPluginForModelixExport", Copy.class, copy -> {
                    copy.dependsOn(copyMpsTask);
                    copy.from(pluginsConfig.resolve().stream().map(it -> project.zipTree(it)).collect(Collectors.toList()));
                    copy.eachFile(fcd -> {
                        if (fcd.getRelativePath().getSegments()[0].equals("de.itemis.mps.extensions")) {
                            // remove first folder from output path
                            fcd.setRelativePath(new RelativePath(true, Arrays.stream(fcd.getRelativePath().getSegments()).skip(1).toArray(String[]::new)));
                        }
                    });
                    copy.into(new File(new File("mpsForModelixExport"), "plugins"));
                });
            }

            Task generatorAntScript = project.getTasks().create("generatorAntScript");
            Action<Task> action = task -> {

            };
            generatorAntScript.setActions(Collections.singletonList(action));
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
