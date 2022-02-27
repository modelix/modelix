/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.gradle.mpsbuild;

import org.apache.commons.io.FileUtils;
import org.gradle.api.Action;
import org.gradle.api.Plugin;
import org.gradle.api.Project;
import org.gradle.api.Task;
import org.gradle.api.artifacts.Configuration;
import org.modelix.buildtools.BuildScriptGenerator;
import org.modelix.buildtools.FoundModule;
import org.modelix.buildtools.ModulesMiner;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.Collections;
import java.util.Enumeration;
import java.util.jar.Manifest;

public class MPSBuildPlugin implements Plugin<Project> {

    @Override
    public void apply(Project project_) {
        MPSBuildSettings settings = project_.getExtensions().create("mpsBuild", MPSBuildSettings.class);
        project_.afterEvaluate((Project project) -> {
            settings.validate();

            Manifest manifest = readManifest();
            String modelixVersion = manifest.getMainAttributes().getValue("modelix-Version");
            Configuration genConfig = project.getConfigurations().detachedConfiguration(
                project.getDependencies().create("org.modelix:mps-build-tools:" + modelixVersion)
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
                mpsConfig = project.getConfigurations().detachedConfiguration(
                        project.getDependencies().create("com.jetbrains:mps:" + mpsVersion )
                );
                pluginsConfig = project.getConfigurations().detachedConfiguration(
                        project.getDependencies().create("org.modelix:mps-model-plugin:" + modelixVersion));
            }

            File antScriptFile = new File(project.getProjectDir(), "mps-generate-script.xml");
            Task generatorAntScript = project.getTasks().create("generatorAntScript");
            Action<Task> action = task -> {
                ModulesMiner modulesMiner = new ModulesMiner();
                File modulesFolder = project.getProjectDir();
                System.out.println("Searching for modules in " + modulesFolder.getAbsolutePath());
                modulesMiner.searchInFolder(modulesFolder);
                for (FoundModule module : modulesMiner.getModules().getModules().values()) {
                    System.out.println("Module found: " + module.getOwner().getPath().getLocalAbsolutePath());
                }
                String mpsPath = settings.getMpsPath();
                if (mpsPath != null) {
                    File mpsHome = project.getProjectDir().toPath().resolve(Path.of(mpsPath)).normalize().toFile();
                    System.out.println("mps.home = " + mpsHome);
                    modulesMiner.searchInFolder(mpsHome);
                }
                BuildScriptGenerator generator = new BuildScriptGenerator(modulesMiner, null);
                String xml = generator.generateXML();
                try {
                    FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8);
                    System.out.println("Build script written to " + antScriptFile.getAbsolutePath());
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
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
