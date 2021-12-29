package org.modelix.gradle.model;

import com.intellij.util.ReflectionUtil;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.TestMode;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.tool.common.PluginData;

import java.io.File;

public class EnvironmentLoader {

    private static Environment environment;
    private static Project ourProject;

    public static void loadEnvironment(Project project) {
        if (ourProject != null) return;
        ourProject = project;
    }

    public static Project loadEnvironment(File gitRepoDir) {
        if (ourProject == null) {
            // If you get the exception "Could not find installation home path"
            // Set "-Didea.home" in the VM options

            ReflectionUtil.setField(PathManager.class, null, String.class, "ourHomePath", System.getProperty("idea.home"));
            ReflectionUtil.setField(PathManager.class, null, String.class, "ourIdeaPath", System.getProperty("idea.home"));

            EnvironmentConfig config = EnvironmentConfig.defaultConfig()
                    .withBootstrapLibraries()
                    .withBuildPlugin()
                    .withCorePlugin()
                    .withDefaultPlugins()
                    .withDefaultSamples()
                    //.withDevkitPlugin()
                    .withGit4IdeaPlugin()
                    .withGit4IdeaStubsPlugin()
                    //.withDebuggerPlugin()
                    .withJavaPlugin()
                    //.withMakePlugin()
                    .withMigrationPlugin()
                    //.withTestingPlugin()
                    .withVcsPlugin()
                    .withWorkbenchPath()
                    ;

            // Add MPS extensions and Modelix
            File extensionsPath = new File(System.getProperty("modelix.export.mpsExtensionsPath"));
            if (!extensionsPath.exists()) {
                throw new RuntimeException("MPS Extensions path is not valid: " + extensionsPath);
            }


            // Add Modelix
            File modelixPath = new File(System.getProperty("modelix.export.modelixPath"));
            if (!modelixPath.exists()) {
                throw new RuntimeException("Modelix path is not valid: " + modelixPath);
            }
            //.addPlugin(PathManager.getHomePath()+"/plugins/org.modelix.model", "org.modelix.model")
            //.addPlugin(PathManager.getHomePath()+"/plugins/org.modelix.common", "org.modelix.common")

//            extension.additionalPlugins.forEach {
//                                    def f = new File(it.path)
//                                    if (f.exists()) {
//                                        plugin(path: it.path, id: it.id)
//                                    } else {
//                                        logger.warn("Provided plugin does not exist: ${it.path} (${it.id})")
//                                    }
//                                }
//
//                                extension.additionalPluginsDirs.forEach { entry ->
//                                    if (entry.dir.exists()) {
//                                        entry.dir.eachFileRecurse(groovy.io.FileType.FILES) { file ->
//                                            if (file.name == "plugin.xml") {
//                                                def xmlCode = new XmlSlurper().parseText(file.getText())
//                                                def id = xmlCode.id.text()
//                                                if (!entry.idsToExclude.contains(id)) {
//                                                    def dir = file.getParentFile().getParentFile()
//                                                    plugin(path: dir.getAbsolutePath(), id: id)
//                                                }
//                                            }
//                                        }
//                                    } else {
//                                        logger.warn("Provided plugin dir does not exist: ${it}")
//                                    }
//                                }
//
//
//                                extension.additionalLibraries.forEach {
//                                    if (it instanceof String){
//                                        logger.info(" -> library ${it}")
//                                        def f = new File(it)
//                                        if (f.exists()) {
//                                            library(file: it)
//                                        } else {
//                                            logger.warn("Provided library does not exist: ${f.absolutePath}")
//                                        }
//                                    } else if (it instanceof File) {
//                                        if (it.exists()) {
//                                            it.eachFileRecurse { file ->
//                                                logger.info(" -> considering library dir ${file} in ${it}")
//                                                if (file.getName().endsWith(".jar")) {
//                                                    library(file: "${file.getAbsolutePath()}")
//                                                }
//                                            }
//                                        } else {
//                                            logger.warn("Provided library does not exist: ${it.absolutePath}")
//                                        }
//                                    } else {
//                                        logger.error("ignoring additionalLibraries ${it}, as they are not a String or a File")
//                                    }
//                                }

            if (gitRepoDir != null) {
                config.addLib(gitRepoDir.getAbsolutePath());
            }

            System.out.println("<Environment - Plugins start>");
            for (PluginData pd : config.getPlugins()) {
                System.out.println(" Plugin Data " + pd.path+" " + pd.id);
            }
            System.out.println("<Environment - Plugins end>");

//            for (IdeaPluginDescriptorImpl plugin : PluginManagerCore.loadDescriptors(null, new ArrayList<String>())) {
//                System.out.println("addPlugin(" + plugin.getPath() + ", " + plugin.getPluginId().getIdString() + ")");
//                config.addPlugin(plugin.getPath().toString(), plugin.getPluginId().getIdString());
//            }

            File homePath = new File(PathManager.getHomePath());
            loadLangJars(config, new File(homePath,"languages"));
            loadLangJars(config, new File(homePath,"plugins"));
            environment = new IdeaEnvironment(config);
            System.out.println("IdeaEnvironment created");
            RuntimeFlags.setTestMode(TestMode.NONE);
            System.out.println("Test mode set to None");
            ((IdeaEnvironment) environment).init();
            System.out.println("IdeaEnvironment initialized");
            ourProject = environment.createEmptyProject();
            System.out.println("Empty project created");
        }

        return ourProject;
    }

    static {

    }

    protected static void loadLangJars(EnvironmentConfig config, File folder) {
        if (!folder.exists()) return;
        if (folder.isFile()) {
            if (folder.getName().toLowerCase().endsWith(".jar")) {
                config.addLib(folder.getAbsolutePath());
            }
        } else {
            for (File subfolder : folder.listFiles()) {
                loadLangJars(config, subfolder);
            }
        }
    }

}
