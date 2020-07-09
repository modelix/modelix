package org.modelix.ui.server;

import com.google.common.io.Files;
import com.intellij.diff.DiffContext;
import com.intellij.diff.requests.ContentDiffRequest;
import com.intellij.diff.requests.DiffRequest;
import com.intellij.dvcs.repo.VcsRepositoryManager;
import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.util.Key;
import com.intellij.openapi.util.UserDataHolder;
import com.intellij.openapi.util.UserDataHolderBase;
import com.intellij.openapi.vcs.changes.Change;
import com.intellij.openapi.vcs.changes.actions.diff.ChangeDiffRequestProducer;
import com.intellij.openapi.vcs.diff.ItemLatestState;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.vcsUtil.VcsUtil;
import git4idea.GitCommit;
import git4idea.history.GitHistoryUtils;
import git4idea.repo.GitRepository;
import git4idea.repo.GitRepositoryImpl;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.vcs.platform.integration.ModelDiffViewer;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.revwalk.RevCommit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) throws Exception {
        try {
            System.out.println("env: " + System.getenv());
            System.out.println("properties: " + System.getProperties());

            File gitRepoDir = null;

            String gitRepoUri = getPropertyOrEnv("GIT_REPO_URI");

            if (gitRepoUri != null && gitRepoUri.length() > 0) {
                System.out.println("Cloning " + gitRepoUri);
                String gitCommitId = getPropertyOrEnv("GIT_COMMIT_ID");
                System.out.println("Commit ID: " + gitCommitId);

                gitRepoDir = Files.createTempDir();
                recursiveDeleteOnExit(gitRepoDir);
                Git git = Git.cloneRepository()
                        .setURI(gitRepoUri)
                        .setDirectory(gitRepoDir)
                        .setNoCheckout(gitCommitId != null)
                        .call();
                if (gitCommitId != null) {
                    System.out.println("Checkout " + gitCommitId);
                    git.checkout().setName(gitCommitId).call();
                }
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
            Project mpsProject = EnvironmentLoader.loadEnvironment(gitRepoDir);
            LOG.debug("idea.load.plugins.id: " + System.getProperty("idea.load.plugins.id"));

            if (gitRepoDir != null) {
                VirtualFile repoRoot = LocalFileSystem.getInstance().findFileByIoFile(gitRepoDir);
                final com.intellij.openapi.project.Project project = ((MPSProject) mpsProject).getProject();

                VcsRepositoryManager vcsManager = VcsRepositoryManager.getInstance(project);
                vcsManager.addExternalRepository(
                        repoRoot,
                        GitRepositoryImpl.createInstance(repoRoot, project, vcsManager, false)
                );

                List<GitCommit> history = GitHistoryUtils.history(project, repoRoot, "-n1");
                Change change = history.get(0).getChanges().stream().findFirst().orElse(null);
                System.out.println("Change: " + change);
                DiffContext context = new DiffContext() {
                    @Nullable
                    @Override
                    public com.intellij.openapi.project.Project getProject() {
                        return project;
                    }

                    @Override
                    public boolean isWindowFocused() {
                        return false;
                    }

                    @Override
                    public boolean isFocusedInWindow() {
                        return false;
                    }

                    @Override
                    public void requestFocusInWindow() {

                    }
                };
                ChangeDiffRequestProducer changeDiffRequestProducer = ChangeDiffRequestProducer.create(project, change);
                System.out.println("ChangeDiffRequestProducer: " + changeDiffRequestProducer);
                DiffRequest diffRequest = changeDiffRequestProducer.process(context, new EmptyProgressIndicator());
                System.out.println("DiffRequest: " + diffRequest);
                JComponent viewer = new ModelDiffViewer(context, (ContentDiffRequest) diffRequest).getComponent();
                System.out.println("Viewer: " + viewer);
            }
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

