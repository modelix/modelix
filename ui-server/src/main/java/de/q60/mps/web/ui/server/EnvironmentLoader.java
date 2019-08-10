package de.q60.mps.web.ui.server;

import com.intellij.util.ReflectionUtil;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.PathManager;

import java.io.File;

public class EnvironmentLoader {

    private static Environment environment;
    private static Project ourProject;

    public static void loadEnvironment(Project project) {
        if (ourProject != null) return;
        ourProject = project;
    }

    public static Project loadEnvironment() {
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
                    .withJavaPlugin()
                    //.withMakePlugin()
                    .withMigrationPlugin()
                    //.withTestingPlugin()
                    .withVcsPlugin()
                    .withWorkbenchPath()
                    //.addMacro("extensions.home", new File("/Users/slisson/mps/mps191/MPS-Extensions"))
                    ;
            File homePath = new File(jetbrains.mps.util.PathManager.getHomePath());
            loadLangJars(config, new File(homePath,"languages"));
            loadLangJars(config, new File(homePath,"plugins"));
            environment = new IdeaEnvironment(config);
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
