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
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class EnvironmentLoader {

    public enum Key {
        SERVER_URL("serverUrl"),
        REPOSITORY_ID("repositoryId"),
        BRANCH_NAME("branchName"),
        ADDITIONAL_LIBRARIES("additionalLibraries"),
        ADDITIONAL_LIBRARY_DIRS("additionalLibraryDirs"),
        ADDITIONAL_PLUGINS("additionalPlugins"),
        ADDITIONAL_PLUGIN_DIRS("additionalPluginDirs"),
        MPS_EXTENSIONS_PATH("mpsExtensionsPath"),
        MODELIX_PATH("modelixPath");

        private String code;

        Key(String code) {
            this.code = code;
        }

        public String getCode() {
            return this.code;
        }

        public String getPropertyKey() {
            return ExportMain.PROPERTY_PREFIX + this.code;
        }

        public String readProperty() {
            return System.getProperty(getPropertyKey());
        }

        public File readPropertyAsFile() {
            return new File(System.getProperty(getPropertyKey()));
        }
    }


    private static Environment environment;
    private static Project ourProject;

    public static void loadEnvironment(Project project) {
        if (ourProject != null) return;
        ourProject = project;
    }

    /**
     * The user of the plugin can indicate single libraries to import or entire dirs to explore and import recursively.
     * The exploration is done at this time and not earlier because the directories could be filled by other tasks that
     * could have not yet been completed at configuration time.
     */
    private static void loadAdditionalLibraries(EnvironmentConfig config) {
        String additionalLibrariesStr = Key.ADDITIONAL_LIBRARIES.readProperty();
        String[] additionalLibraries = additionalLibrariesStr.isBlank() ? new String[]{}
                : additionalLibrariesStr.split(",");
        for (String additionalLibrary: additionalLibraries) {
            File f = new File(additionalLibrary);
            if (f.exists()) {
                System.out.println("Loading library " + f.getAbsolutePath());
                config.addLib(f.getAbsolutePath());
            } else {
                throw new RuntimeException("Provided library does not exist: " + f.getAbsolutePath());
            }
        }

        String additionalLibraryDirsStr = Key.ADDITIONAL_LIBRARY_DIRS.readProperty();
        String[] additionalLibraryDirs = additionalLibraryDirsStr.isBlank() ? new String[]{}
                : additionalLibraryDirsStr.split(",");
        for (String additionalLibraryDir: additionalLibraryDirs) {
            File f = new File(additionalLibraryDir);
            if (f.exists()) {
                try {
                    Files.find(Paths.get(f.getAbsolutePath()), 999,
                                    (p, bfa) -> bfa.isRegularFile() && p.getFileName().toString()
                                            .matches(".*\\.jar"))
                            .forEach( file -> {
                                System.out.println("Loading library " + file);
                                config.addLib(file.toString());
                            });
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } else {
                throw new RuntimeException("Provided library dir does not exist: " + f.getAbsolutePath());
            }
        }
    }

    /**
     * The user of the plugin can indicate single plugins to import or entire dirs to explore and import recursively.
     * The exploration is done at this time and not earlier because the directories could be filled by other tasks that
     * could have not yet been completed at configuration time.
     */
    private static void loadAdditionalPlugins(EnvironmentConfig config) {
        String additionalPluginsStr = Key.ADDITIONAL_PLUGINS.readProperty();
        String[] additionalPlugins = additionalPluginsStr.isBlank() ? new String[]{} : additionalPluginsStr.split(",");
        for (String additionalPlugin: additionalPlugins) {
            String[] parts = additionalPlugin.split("#");
            String id = parts[0];
            File f = new File(parts[1]);
            if (f.exists()) {
                System.out.println("Loading plugin " + f.getAbsolutePath() + "(id: "+ id+")");
                config.addPlugin(f.getAbsolutePath(), id);
            } else {
                throw new RuntimeException("Provided plugin does not exist: " + f.getAbsolutePath());
            }
        }

        String additionalPluginDirsStr = Key.ADDITIONAL_PLUGIN_DIRS.readProperty();
        String[] additionalPluginDirs = additionalPluginDirsStr.isBlank() ? new String[]{} : additionalPluginDirsStr.split("\\$");
        for (String additionalPluginDir: additionalPluginDirs) {
            String[] parts = additionalPluginDir.split("#");
            String path = parts[0];
            File f = new File(path);
            String[] idsToExcludeArray = (parts.length == 1 || parts[1].isBlank()) ? new String[]{} : parts[1].split(",");
            Set<String> idsToExclude = new HashSet<String>(Arrays.asList(idsToExcludeArray));
            if (f.exists()) {
                try {
                    Files.find(Paths.get(f.getAbsolutePath()), 999,
                                    (p, bfa) -> bfa.isRegularFile() && p.getFileName().toString().matches("plugin.xml"))
                            .forEach( file -> {
                                DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
                                try {
                                    DocumentBuilder db = dbf.newDocumentBuilder();
                                    Document doc = db.parse(file.toFile());
                                    Element element = (Element)doc.getFirstChild();
                                    Element idElement = (Element)element.getElementsByTagName("id").item(0);
                                    String id = idElement.getTextContent();
                                    if (!idsToExclude.contains(id)) {
                                        File dir = file.toFile().getParentFile().getParentFile();
                                        System.out.println("Loading plugin " + dir.getAbsolutePath() + "(id: "+ id+")");
                                        config.addPlugin(dir.getAbsolutePath(), id);
                                    }
                                } catch (Exception e) {
                                    throw new RuntimeException(e);
                                }
                            });
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } else {
                throw new RuntimeException("Provided plugin dir does not exist: " + f.getAbsolutePath());
            }
        }
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
                    .withGit4IdeaPlugin()
                    .withGit4IdeaStubsPlugin()
                    .withJavaPlugin()
                    .withMigrationPlugin()
                    .withVcsPlugin()
                    .withWorkbenchPath()
                    ;

            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-console", "jetbrains.mps.console");
            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-debugger-api", "jetbrains.mps.debugger.api");
            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-debugger-java", "jetbrains.mps.debugger.java");
            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-devkit", "jetbrains.mps.ide.devkit");
            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-httpsupport", "jetbrains.mps.ide.httpsupport");
            config.addPlugin(PathManager.getHomePath() + "/plugins/mps-execution-languages", "jetbrains.mps.execution.languages");

            loadAdditionalLibraries(config);
            loadAdditionalPlugins(config);

            // Add MPS extensions and Modelix
            File extensionsPath = Key.MPS_EXTENSIONS_PATH.readPropertyAsFile();
            if (!extensionsPath.exists()) {
                throw new RuntimeException("MPS Extensions path is not valid: " + extensionsPath);
            }

            // Add Modelix
            File modelixPath = Key.MODELIX_PATH.readPropertyAsFile();
            if (!modelixPath.exists()) {
                throw new RuntimeException("Modelix path is not valid: " + modelixPath);
            }
            //.addPlugin(PathManager.getHomePath()+"/plugins/org.modelix.model", "org.modelix.model")
            //.addPlugin(PathManager.getHomePath()+"/plugins/org.modelix.common", "org.modelix.common")


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
            try {
                System.out.println("About to init environment " + environment);
                ((IdeaEnvironment) environment).init();
                System.out.println("IdeaEnvironment initialized");
                ourProject = environment.createEmptyProject();
                System.out.println("Empty project created");
            } catch (Throwable e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            }
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
