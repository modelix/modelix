package org.modelix.ui.server;

import com.intellij.ide.plugins.IdeaPluginDescriptorImpl;
import com.intellij.ide.plugins.PluginManager;
import com.intellij.ide.plugins.PluginManagerCore;
import com.intellij.util.ReflectionUtil;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.TestMode;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.PathManager;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class EnvironmentLoader {

    private static Environment environment;
    private static Project ourProject;

    public static void loadEnvironment(Project project) {
        if (ourProject != null) return;
        ourProject = project;
    }

    public static Project loadEnvironment(File gitRepoDir, List<Pair<String, String>> additionalPlugins) {
        if (ourProject == null) {
            // If you get the exception "Could not find installation home path"
            // Set "-Didea.home" in the VM options

            ReflectionUtil.setField(PathManager.class, null, String.class, "ourHomePath", System.getProperty("idea.home"));
            ReflectionUtil.setField(PathManager.class, null, String.class, "ourIdeaPath", System.getProperty("idea.home"));

            File pluginsFolder = new File(PathManager.getPreInstalledPluginsPath());

            EnvironmentConfig config = EnvironmentConfig.defaultConfig()
                    .withBootstrapLibraries()
                    .withBuildPlugin()
                    .withCorePlugin()
                    .withDefaultPlugins()
                    .withDefaultSamples()
                    //.withDevkitPlugin()
                    .withGit4IdeaPlugin()
                    .withJavaPlugin()
                    //.withMakePlugin()
                    .withMigrationPlugin()
                    //.withTestingPlugin()
                    .withVcsPlugin()
                    .withWorkbenchPath()
                    .addPlugin(new File(pluginsFolder, "mps-httpsupport").getAbsolutePath(), "jetbrains.mps.ide.httpsupport")
                    .addPlugin(new File(pluginsFolder, "org.modelix.ui").getAbsolutePath(), "org.modelix.ui")
                    .addPlugin(new File(pluginsFolder, "org.modelix.model").getAbsolutePath(), "org.modelix.model")
                    .addPlugin(new File(pluginsFolder, "org.modelix.common").getAbsolutePath(), "org.modelix.common")
                    .addPlugin(new File(pluginsFolder, "org.modelix.ui.server").getAbsolutePath(), "org.modelix.ui.server");

            for (Pair<String, String> additionalPlugin : additionalPlugins) {
                config.addPlugin(new File(pluginsFolder, additionalPlugin.o1).getAbsolutePath(), additionalPlugin.o2);
            }

            if (gitRepoDir != null) {
                config.addLib(gitRepoDir.getAbsolutePath());
            }

//            for (IdeaPluginDescriptorImpl plugin : PluginManagerCore.loadDescriptors(null, new ArrayList<String>())) {
//                System.out.println("addPlugin(" + plugin.getPath() + ", " + plugin.getPluginId().getIdString() + ")");
//                config.addPlugin(plugin.getPath().toString(), plugin.getPluginId().getIdString());
//            }

            File homePath = new File(jetbrains.mps.util.PathManager.getHomePath());
            loadLangJars(config, new File(homePath,"languages"));
            loadLangJars(config, new File(homePath,"plugins"));
            environment = new IdeaEnvironment(config);
            RuntimeFlags.setTestMode(TestMode.NONE);
            ((IdeaEnvironment) environment).init();
            ourProject = environment.createEmptyProject();

            // Use DefaultModelAccess to remove the need of undoable commands executed in EDT
			/*
			ModelAccess ma = ModelAccess.instance();
			if (ma instanceof WorkbenchModelAccess) {
				((WorkbenchModelAccess) ma).disposeComponent();
			}
			UndoHelper.getInstance().setUndoHandler(new DefaultUndoHandler());
			*/

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
