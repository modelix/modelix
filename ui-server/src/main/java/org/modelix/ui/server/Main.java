package org.modelix.ui.server;

import com.google.common.io.Files;
import jetbrains.mps.project.Project;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.eclipse.jgit.api.Git;

import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) throws Exception {
        try {
            System.out.println("env: " + System.getenv());
            System.out.println("properties: " + System.getProperties());

            File editableModulesDir = null;
            File gitRepoDir = null;

            String gitRepoUri = getPropertyOrEnv("GIT_REPO_URI");

            if (gitRepoUri != null && gitRepoUri.length() > 0) {
                System.out.println("Cloning " + gitRepoUri);
                String gitCommitId = getPropertyOrEnv("GIT_COMMIT_ID");
                System.out.println("Commit ID: " + gitCommitId);

                gitRepoDir = Files.createTempDir();
                System.setProperty("GIT_REPO_DIR", gitRepoDir.getAbsolutePath());
                recursiveDeleteOnExit(gitRepoDir);
                Git git = Git.cloneRepository()
                        .setURI(gitRepoUri)
                        .setDirectory(gitRepoDir)
                        .setNoCheckout(gitCommitId != null && gitCommitId.length() > 0)
                        .call();
                if (gitCommitId != null && gitCommitId.length() > 0) {
                    System.out.println("Checkout " + gitCommitId);
                    git.checkout().setName(gitCommitId).call();
                }
                editableModulesDir = gitRepoDir;
            }

            if (editableModulesDir == null) {
                File sandboxDir = new File("/usr/modelix-ui/sandbox/");
                if (sandboxDir.exists()) editableModulesDir = sandboxDir;
            }

            if (editableModulesDir != null) {
                Set<File> files = new HashSet<>();
                System.out.println("Searching in " + editableModulesDir);
                collectMPSFiles(editableModulesDir, files);
                files.forEach(f -> System.out.println("MPS related file found: " + f));
            }

            Project mpsProject = EnvironmentLoader.loadEnvironment(editableModulesDir);
            LOG.debug("idea.load.plugins.id: " + System.getProperty("idea.load.plugins.id"));
        } catch (Exception ex) {
            LOG.error("", ex);
        }
    }

    private static void collectMPSFiles(File file, Set<File> acc) {
        String name = file.getName().toLowerCase();
        if (name.endsWith(".mps") || name.endsWith(".mpl") || name.endsWith(".msd") || name.endsWith(".devkit")) {
            acc.add(file);
        }

        if (file.isDirectory()) {
            for (File subfile : file.listFiles()) {
                collectMPSFiles(subfile, acc);
            }
        }
    }

    public static void recursiveDeleteOnExit(final File dir) {
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                try {
                    FileUtils.deleteDirectory(dir);
                } catch (IOException e) {
                    LOG.error(e);
                }
            }
        });
    }

    private static String getPropertyOrEnv(String name) {
        String value = System.getProperty(name);
        if (value == null || value.length() == 0) value = System.getenv(name);
        return value;
    }
}

