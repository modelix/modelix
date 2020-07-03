package org.modelix.ui.server;

import com.google.common.io.Files;
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

            File gitRepoDir = null;

            String gitRepoUri = System.getProperty("GIT_REPO_URI");
            if (gitRepoUri == null || gitRepoUri.length() == 0) gitRepoUri = System.getenv("GIT_REPO_URI");

            if (gitRepoUri != null && gitRepoUri.length() > 0) {
                System.out.println("Cloning " + gitRepoUri);

                gitRepoDir = Files.createTempDir();
                recursiveDeleteOnExit(gitRepoDir);
                Git git = Git.cloneRepository()
                        .setURI(gitRepoUri)
                        .setDirectory(gitRepoDir)
                        .call();
                Set<File> files = new HashSet<>();
                System.out.println("Searching in " + gitRepoDir);
                collectMPSFiles(gitRepoDir, files);
                files.forEach(f -> System.out.println("MPS related file found: " + f));
            }

            LOG.error("Test error");
            LOG.warn("Test warning");
            LOG.info("Test info");
            LOG.debug("Test debug");
            LOG.trace("Test trace");
            EnvironmentLoader.loadEnvironment(gitRepoDir);
            LOG.debug("idea.load.plugins.id: " + System.getProperty("idea.load.plugins.id"));
        } catch (Exception ex) {
            LOG.error(ex);
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
}

