package org.modelix.ui.server;

import com.google.common.io.Files;
import com.intellij.diff.DiffContext;
import com.intellij.diff.requests.ContentDiffRequest;
import com.intellij.diff.requests.DiffRequest;
import com.intellij.dvcs.repo.VcsRepositoryManager;
import com.intellij.ide.util.PropertiesComponent;
import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.ui.Splitter;
import com.intellij.openapi.vcs.FilePath;
import com.intellij.openapi.vcs.changes.Change;
import com.intellij.openapi.vcs.changes.actions.diff.ChangeDiffRequestProducer;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.ui.UIUtil;
import git4idea.GitCommit;
import git4idea.history.GitHistoryUtils;
import git4idea.repo.GitRepositoryImpl;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.vcs.diff.ui.RootDifferencePane;
import jetbrains.mps.vcs.diff.ui.common.DiffModelTree;
import jetbrains.mps.vcs.platform.integration.ModelDiffViewer;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.log4j.Logger;
import org.eclipse.jgit.api.Git;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.datasource.FileExtensionDataSourceType;

import javax.imageio.ImageIO;
import javax.swing.*;
import javax.swing.tree.TreePath;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
                System.setProperty("GIT_REPO_DIR", gitRepoDir.getAbsolutePath());
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
                PropertiesComponent.getInstance().setValue(RootDifferencePane.class.getName() + "ShowInspector", false);

                VirtualFile repoRoot = LocalFileSystem.getInstance().findFileByIoFile(gitRepoDir);
                final com.intellij.openapi.project.Project project = ((MPSProject) mpsProject).getProject();

                VcsRepositoryManager vcsManager = VcsRepositoryManager.getInstance(project);
                vcsManager.addExternalRepository(
                        repoRoot,
                        GitRepositoryImpl.createInstance(repoRoot, project, vcsManager, false)
                );

                List<GitCommit> history = GitHistoryUtils.history(project, repoRoot, "-n1");
                GitCommit commit = history.get(0);
                for (Change change : commit.getChanges()) {
                    if (!isModel(change)) continue;

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

                    SwingUtilities.invokeAndWait(() -> {
                        collectComponents(viewer).stream().filter(c -> c instanceof DiffModelTree).findFirst().ifPresent(tree -> {
                            DiffModelTree diffTree = (DiffModelTree) tree;
                            for (int i = 0; i < diffTree.getRowCount(); i++) {
                                TreePath path = diffTree.getPathForRow(i);
                                if (!(path.getLastPathComponent() instanceof DiffModelTree.RootTreeNode)) continue;
                                diffTree.setSelectionPath(path);

                                layoutDiffView(viewer);

                                BufferedImage img = paintComponent(viewer);

                                try {
                                    ImageIO.write(img, "png", new File(getAffectedFile(change).getName() + "_" + i + "_diff.png"));
                                } catch (IOException e) {
                                    LOG.error("", e);
                                }
                            }
                        });
                    });
                }
                System.exit(0);
            }
        } catch (Exception ex) {
            LOG.error("", ex);
        }
    }

    private static void layoutDiffView(JComponent viewer) {
        viewer.setPreferredSize(null);
        List<Component> components = collectComponents(viewer);
        components.forEach(c -> c.setPreferredSize(null));
        components.stream().filter(c -> c instanceof JTree).map(c -> (JTree) c)
                .forEach(c -> c.setVisibleRowCount(c.getRowCount()));
        List<Dimension> sizes = components.stream().map(c -> c.getPreferredSize()).collect(Collectors.toList());
        viewer.setSize(viewer.getPreferredSize());
        viewer.setSize(viewer.getWidth() + 10, viewer.getHeight() + 10);
        layoutAll(viewer);

        for (int timeout = 5; timeout > 0 ; timeout--) {
            for (int timeout2 = 20; timeout2 > 0; timeout2--) {
                boolean anySplitterChanged = false;
                for (Splitter splitter : components.stream().filter(c -> c instanceof Splitter).map(c -> (Splitter) c).collect(Collectors.toList())) {
                    float additional1;
                    float additional2;
                    float size1;
                    float size2;
                    if (splitter.isVertical()) {
                        additional1 = calcAdditionalRequiredSize(splitter.getFirstComponent()).height;
                        additional2 = calcAdditionalRequiredSize(splitter.getSecondComponent()).height;
                        size1 = splitter.getFirstComponent().getHeight();
                        size2 = splitter.getSecondComponent().getHeight();
                    } else {
                        additional1 = calcAdditionalRequiredSize(splitter.getFirstComponent()).width;
                        additional2 = calcAdditionalRequiredSize(splitter.getSecondComponent()).width;
                        size1 = splitter.getFirstComponent().getWidth();
                        size2 = splitter.getSecondComponent().getWidth();
                    }
                    float newProportion = (size1 + additional1) / (size1 + size2 + additional1 + additional2);
                    newProportion = Math.min(1.0f, newProportion);
                    newProportion = Math.max(0.0f, newProportion);
                    if (newProportion != splitter.getProportion()) {
                        anySplitterChanged = true;
                        splitter.setProportion(newProportion);
                        layoutAll(viewer);
                    }
                }
                if (!anySplitterChanged) break;
            }


            Dimension additionalRequiredSize = calcAdditionalRequiredSize(viewer);
            Dimension size = viewer.getSize();
            viewer.setSize(new Dimension(size.width + additionalRequiredSize.width, size.height + additionalRequiredSize.height));
            layoutAll(viewer);
            if (additionalRequiredSize.equals(new Dimension(0, 0))) break;
        }
    }

    private static BufferedImage paintComponent(JComponent component) {
        BufferedImage img = UIUtil.createImage(component, component.getWidth(), component.getHeight(), BufferedImage.TYPE_INT_ARGB);
        Graphics2D g = img.createGraphics();
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);

        component.paint(g);
        return img;
    }

    private static Dimension calcAdditionalRequiredSize(Component component) {
        return collectComponents(component).stream().filter(c -> !(c.getParent() instanceof JScrollPane)).map(c -> {
            Dimension preferredSize = c.getPreferredSize();
            Dimension size = c.getSize();
            return new Dimension(Math.max(0, preferredSize.width - size.width), Math.max(0, preferredSize.height - size.height));
        }).reduce(new Dimension(0, 0), (a, b) -> new Dimension(Math.max(a.width, b.width), Math.max(a.height, b.height)));
    }

    private static List<Component> collectComponents(Component comp) {
        List<Component> acc = new ArrayList<>();
        collectComponents(comp, acc);
        return acc;
    }
    private static void collectComponents(Component comp, List<Component> acc) {
        acc.add(comp);
        if (comp instanceof Container) {
            for (Component child : ((Container) comp).getComponents()) {
                collectComponents(child, acc);
            }
        }
    }

    private static void layoutAll(Component comp) {
        comp.doLayout();
        if (comp instanceof Container) {
            for (Component child : ((Container) comp).getComponents()) {
                layoutAll(child);
            }
        }
    }

    private static FilePath getAffectedFile(Change change) {
        return ObjectUtils.firstNonNull(change.getAfterRevision(), change.getBeforeRevision()).getFile();
    }

    private static boolean isModel(Change change) {
        String ext = getAffectedFile(change).getFileType().getDefaultExtension();
        return PersistenceFacade.getInstance().getModelFactory(FileExtensionDataSourceType.of(ext)) != null;
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

