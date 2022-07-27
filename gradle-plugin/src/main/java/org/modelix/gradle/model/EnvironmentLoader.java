package org.modelix.gradle.model;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.intellij.util.ReflectionUtil;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.TestMode;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.PathManager;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

public class EnvironmentLoader {

    /**
     * Values passed to ExportMain and then exposed as System properties.
     */
    public enum Key {
        SERVER_URL("serverUrl"),
        REPOSITORY_ID("repositoryId"),
        BRANCH_NAME("branchName"),
        ADDITIONAL_LIBRARIES("additionalLibraries"),
        ADDITIONAL_LIBRARY_DIRS("additionalLibraryDirs"),
        ADDITIONAL_PLUGINS("additionalPlugins"),
        ADDITIONAL_PLUGIN_DIRS("additionalPluginDirs"),
        MPS_EXTENSIONS_PATH("mpsExtensionsPath"),
        GRADLE_PLUGIN_SOCKET_PORT("gradlePluginSocketPort"),
        MODELIX_PATH("modelixPath"),
        MAKE("make"),
        PROJECT("project"),

        DEBUG("debug");

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
            String path = System.getProperty(getPropertyKey());
            if (path == null) {
                return null;
            } else {
                return new File(path);
            }
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
        // We load a list of additional libraries. We expect them to be separated by commas
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

        // We load a list of directories containing additional libraries. We expect them to be separated by commas
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
        if (additionalPluginsStr != null) {
            JsonArray additionalPluginsEntries = JsonParser.parseString(additionalPluginsStr).getAsJsonArray();
            additionalPluginsEntries.forEach(entry -> {
                JsonObject entryAsJO = entry.getAsJsonObject();
                File file = new File(entryAsJO.get("path").getAsString());
                String id = entryAsJO.get("id").getAsString();
                if (file.exists()) {
                    System.out.println("Loading plugin " + file.getAbsolutePath() + "(id: " + id + ")");
                    config.addPlugin(file.getAbsolutePath(), id);
                } else {
                    throw new RuntimeException("Provided plugin does not exist: " + file.getAbsolutePath());
                }
            });
        }

        String additionalPluginDirsStr = Key.ADDITIONAL_PLUGIN_DIRS.readProperty();
        if (additionalPluginDirsStr != null) {
            JsonArray additionalPluginDirsEntries = JsonParser.parseString(additionalPluginDirsStr).getAsJsonArray();
            additionalPluginDirsEntries.forEach(entry -> {
                JsonObject entryAsJO = entry.getAsJsonObject();
                JsonArray idsToExcludeJA = entryAsJO.get("idsToExclude").getAsJsonArray();
                Set<String> idsToExclude = new HashSet<>();
                idsToExcludeJA.forEach(id -> idsToExclude.add(id.getAsString()));
                File rootFile = new File(entryAsJO.get("path").getAsString());
                if (rootFile.exists()) {
                    try {
                        Files.find(Paths.get(rootFile.getAbsolutePath()), 999,
                                        (p, bfa) -> bfa.isRegularFile() && p.getFileName().toString().matches("plugin.xml"))
                                .forEach(descendantFile -> {
                                    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
                                    try {
                                        DocumentBuilder db = dbf.newDocumentBuilder();
                                        Document doc = db.parse(descendantFile.toFile());
                                        Element element = (Element) doc.getFirstChild();
                                        Element idElement = (Element) element.getElementsByTagName("id").item(0);
                                        String id = idElement.getTextContent();
                                        if (!idsToExclude.contains(id)) {
                                            File dir = descendantFile.toFile().getParentFile().getParentFile();
                                            System.out.println("Loading plugin " + dir.getAbsolutePath() + "(id: " + id + ")");
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
                    throw new RuntimeException("Provided plugin dir does not exist: " + rootFile.getAbsolutePath());
                }
            });
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
            if (extensionsPath == null) {
                System.out.println("WARNING: MPS extensions path was not specified, therefore we expect that MPS extensions plugins have been added explicitly.");
            } else {
                if (!extensionsPath.exists()) {
                    throw new RuntimeException("MPS Extensions path is not valid: " + extensionsPath);
                }
                loadLangJars(config, extensionsPath);
            }

            // Add Modelix
            File modelixPath = Key.MODELIX_PATH.readPropertyAsFile();
            // If the path is null we expect the plugins to be added manually
            if (modelixPath == null) {
                System.out.println("WARNING: modelix path was not specified, therefore we expect that Modelix plugins have been added explicitly.");
            } else {
                if (!modelixPath.exists()) {
                    throw new RuntimeException("Modelix path is not valid: " + modelixPath);
                }
                config.addPlugin(modelixPath.getAbsolutePath() + "/plugins/org.modelix.model", "org.modelix.model");
                config.addPlugin(modelixPath.getAbsolutePath() + "/plugins/org.modelix.common", "org.modelix.common");
            }

            if (gitRepoDir != null) {
                config.addLib(gitRepoDir.getAbsolutePath());
            }

//            for (IdeaPluginDescriptorImpl plugin : PluginManagerCore.loadDescriptors(null, new ArrayList<String>())) {
//                System.out.println("addPlugin(" + plugin.getPath() + ", " + plugin.getPluginId().getIdString() + ")");
//                config.addPlugin(plugin.getPath().toString(), plugin.getPluginId().getIdString());
//            }

            File homePath = new File(PathManager.getHomePath());
            System.out.println("Loading languages and plugins from " + homePath.getAbsolutePath());
            loadLangJars(config, new File(homePath,"languages"));
            loadLangJars(config, new File(homePath,"plugins"));
            environment = new IdeaEnvironment(config);
            RuntimeFlags.setTestMode(TestMode.NONE);
            try {
                File projectFile = Key.PROJECT.readPropertyAsFile();
                ((IdeaEnvironment) environment).init();
                if (projectFile == null) {
                    ourProject = environment.createEmptyProject();
                } else {
                    ourProject = environment.openProject(projectFile);
                }
            } catch (Throwable e) {
                throw new RuntimeException("Issue with initializing environment and creating empty project", e);
            }
        }

        return ourProject;
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
