package org.modelix.model.mpsplugin.history;



import javax.swing.JPanel;
import javax.swing.table.DefaultTableModel;
import javax.swing.JTable;
import java.util.List;
import org.modelix.model.lazy.CLVersion;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.modelix.model.mpsplugin.CloudRepository;
import org.modelix.model.lazy.TreeId;
import javax.swing.JButton;
import java.awt.BorderLayout;
import javax.swing.JScrollPane;
import javax.swing.BorderFactory;
import java.awt.FlowLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import org.modelix.model.mpsplugin.ActiveBranch;
import java.util.UUID;
import jetbrains.mps.ide.ThreadUtils;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import java.util.Vector;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.modelix.model.operations.IOperation;

public class HistoryView extends JPanel {
  private DefaultTableModel tableModel;
  private JTable table;
  private List<CLVersion> versions = ListSequence.fromList(new ArrayList<CLVersion>());
  private CloudRepository cloudRepository;
  private TreeId treeId;
  private String previousBranchName;
  private JButton resetButton;

  public HistoryView() {
    setLayout(new BorderLayout());

    tableModel = new DefaultTableModel();
    tableModel.addColumn("ID");
    tableModel.addColumn("Author");
    tableModel.addColumn("Time");
    tableModel.addColumn("Ops");
    tableModel.addColumn("Hash");

    table = new JTable(tableModel);
    JScrollPane scrollPane = new JScrollPane(table);
    scrollPane.setBorder(BorderFactory.createEmptyBorder());
    add(scrollPane, BorderLayout.CENTER);

    JPanel buttonPanel = new JPanel(new FlowLayout());
    JButton loadButton = new JButton("Load Version");
    loadButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        loadSelectedVersion();
      }
    });
    resetButton = new JButton("Reset to ...");
    resetButton.setEnabled(false);
    resetButton.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        restoreBranch();
      }
    });
    buttonPanel.add(loadButton);
    buttonPanel.add(resetButton);
    add(buttonPanel, BorderLayout.SOUTH);
  }

  public void loadSelectedVersion() {
    int index = table.getSelectedRow();
    if (0 <= index && index < ListSequence.fromList(versions).count()) {
      CLVersion version = ListSequence.fromList(versions).getElement(index);
      ActiveBranch branch = cloudRepository.getActiveBranch(treeId);
      String branchName = "history" + UUID.randomUUID();
      String branchKey = treeId.getBranchKey(branchName);
      cloudRepository.getClient().put(branchKey, version.getHash());
      branch.switchBranch(branchName);
      resetButton.setEnabled(true);
    }
  }

  public void restoreBranch() {
    cloudRepository.getActiveBranch(treeId).switchBranch(previousBranchName);
    resetButton.setEnabled(false);
  }

  public void loadHistory(CloudRepository cloudRepository, TreeId treeId, final CLVersion headVersion) {
    this.cloudRepository = cloudRepository;
    this.treeId = treeId;
    this.previousBranchName = cloudRepository.getActiveBranch(treeId).getBranchName();
    resetButton.setText("Reset to " + previousBranchName);
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        while (tableModel.getRowCount() > 0) {
          tableModel.removeRow(0);
        }
        ListSequence.fromList(versions).clear();
      }
    });
    ApplicationManager.getApplication().executeOnPooledThread(new Runnable() {
      public void run() {
        final Wrappers._T<CLVersion> version = new Wrappers._T<CLVersion>(headVersion);
        while (version.value != null) {
          ThreadUtils.runInUIThreadAndWait(new Runnable() {
            public void run() {
              tableModel.addRow(new Vector<Object>(ListSequence.fromListAndArray(new ArrayList<Object>(), Long.toHexString(version.value.getId()), version.value.getAuthor(), version.value.getTime(), "(" + version.value.getNumberOfOperations() + ") " + ((version.value.operationsInlined() ? IterableUtils.join(Sequence.fromIterable(version.value.getOperations()).select(new ISelector<IOperation, String>() {
                public String select(IOperation it) {
                  return it.toString();
                }
              }), " # ") : "...")), version.value.getHash())));
              ListSequence.fromList(versions).addElement(version.value);
            }
          });
          if (ListSequence.fromList(versions).count() >= 500) {
            break;
          }
          version.value = version.value.getPreviousVersion();
        }
      }
    });
  }
}
