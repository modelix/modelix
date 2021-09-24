package org.modelix.ui.server;

import com.google.common.io.Files;
import jetbrains.mps.project.Project;
import jetbrains.mps.util.Pair;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.eclipse.jgit.api.CloneCommand;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.errors.UnsupportedCredentialItem;
import org.eclipse.jgit.transport.CredentialItem;
import org.eclipse.jgit.transport.CredentialsProvider;
import org.eclipse.jgit.transport.URIish;
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider;

import javax.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
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
                String gitUser = getPropertyOrEnv("GIT_USER");
                String gitPasswordFile = getPropertyOrEnv("GIT_PASSWORD_FILE");
                System.out.println("Commit ID: " + gitCommitId);
                System.out.println("Git User: " + gitUser);

                gitRepoDir = Files.createTempDir();
                System.setProperty("GIT_REPO_DIR", gitRepoDir.getAbsolutePath());
                recursiveDeleteOnExit(gitRepoDir);
                CloneCommand cloneCommand = Git.cloneRepository();


                //no user but password only works for instance when cloning from github with a personal access token
                if (gitPasswordFile != null) {
                    File pwFile = new File(gitPasswordFile);
                    if (!pwFile.exists()) {
                        LOG.error("Git password file " + pwFile.getAbsolutePath() + " does not exist");
                    } else {
                        try {
                            List<String> lines = java.nio.file.Files.readAllLines(pwFile.toPath());
                            if (lines.size() == 0) {
                                LOG.error("password file is empty");
                            } else {
                                cloneCommand.setCredentialsProvider(new UsernamePasswordCredentialsProvider(gitUser, lines.get(0)));
                            }
                        } catch (IOException e) {
                            LOG.error("can't read password file", e);
                        }
                    }
                }

                Git git = cloneCommand
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

            String additionalPluginsProperty = getPropertyOrEnv("ADDITIONAL_PLUGINS");

            List<Pair<String, String>> additionalPlugins = new ArrayList<>();

            if(additionalPluginsProperty != null && additionalPluginsProperty.length() > 0) {
                String[] strings = additionalPluginsProperty.split(",");
                for (String pluginsRaw : strings) {
                    if(pluginsRaw.contains(":")) {
                        String[] split = pluginsRaw.split(":");
                        additionalPlugins.add(new Pair<>(split[0], split[1]));
                    } else {
                        additionalPlugins.add(new Pair<>(pluginsRaw, pluginsRaw));
                    }
                }
            }

            Project mpsProject = EnvironmentLoader.loadEnvironment(editableModulesDir, additionalPlugins);
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

    @Nullable
    private static String getPropertyOrEnv(String name) {
        String value = System.getProperty(name);
        if (value == null || value.length() == 0) value = System.getenv(name);
        return value;
    }
}

