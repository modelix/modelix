package org.modelix.model.server;

import com.google.common.collect.Streams;
import kotlin.Pair;
import kotlin.Unit;
import org.apache.commons.lang3.StringEscapeUtils;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.modelix.model.LinearHistory;
import org.modelix.model.api.IBranch;
import org.modelix.model.api.ITree;
import org.modelix.model.api.IWriteTransaction;
import org.modelix.model.api.IdGeneratorDummy;
import org.modelix.model.api.PBranch;
import org.modelix.model.client.IModelClient;
import org.modelix.model.lazy.CLTree;
import org.modelix.model.lazy.CLVersion;
import org.modelix.model.lazy.IDeserializingKeyValueStore;
import org.modelix.model.lazy.KVEntryReference;
import org.modelix.model.lazy.RepositoryId;
import org.modelix.model.metameta.MetaModelBranch;
import org.modelix.model.operations.IAppliedOperation;
import org.modelix.model.operations.IOperation;
import org.modelix.model.operations.OTBranch;
import org.modelix.model.operations.OTWriteTransactionKt;
import org.modelix.model.operations.RevertToOp;
import org.modelix.model.persistent.CPVersion;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

public class HistoryHandler extends AbstractHandler {

  private final IModelClient client;

  public HistoryHandler(IModelClient client) {
    this.client = client;
  }

  @Override
  public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    if (!(target.startsWith("/history/"))) {
      return;
    }
    List<String> parts = Arrays.stream(target.split("/"))
            .filter(it -> it != null && it.length() > 0)
            .collect(Collectors.toList());


    if (parts.size() == 1) {
      baseRequest.setHandled(true);
      response.setStatus(HttpServletResponse.SC_OK);
      response.setContentType("text/html");
      buildMainPage(response.getWriter());
      return;
    } else if (parts.size() == 3) {
      String repositoryId = parts.get(1);
      String branch = parts.get(2);
      baseRequest.setHandled(true);
      response.setStatus(HttpServletResponse.SC_OK);
      response.setContentType("text/html");
      int limit = toInt(request.getParameter("limit"), 500);
      int skip = toInt(request.getParameter("skip"), 0);
      buildRepositoryPage(response.getWriter(), new RepositoryAndBranch(repositoryId, branch), request.getParameter("head"), skip, limit);
    } else if (parts.size() == 4 && Objects.equals(parts.get(3), "revert")) {
      if (Objects.equals(request.getMethod(), "POST")) {
        String repositoryId = parts.get(1);
        String branch = parts.get(2);
        String fromVersion = request.getParameter("from");
        String toVersion = request.getParameter("to");
        if ((repositoryId != null && repositoryId.length() > 0) && (fromVersion != null && fromVersion.length() > 0) && (toVersion != null && toVersion.length() > 0)) {
          revert(new RepositoryAndBranch(repositoryId, branch), fromVersion, toVersion, request.getHeader("X-Forwarded-Email"));
          baseRequest.setHandled(true);
          response.setStatus(HttpServletResponse.SC_OK);
          response.setContentType("text/html");
          response.getWriter().append("<html><head><meta http-equiv='refresh' content='1; url=./' /></head><body>Revert successful</body></html>");
        }
      } else {
        baseRequest.setHandled(true);
        response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
      }
    }
  }

  public void revert(final RepositoryAndBranch repositoryAndBranch, final String from, final String to, String author) {
    String versionHash = client.get(repositoryAndBranch.getBranchKey());
    CLVersion version = new CLVersion(versionHash, client.getStoreCache());
    OTBranch branch = new OTBranch(new PBranch(version.getTree(), client.getIdGenerator()), client.getIdGenerator(), client.getStoreCache());

    branch.runWrite(() -> {
      IWriteTransaction t = branch.getWriteTransaction();
        CPVersion.Companion.getDESERIALIZER();
        OTWriteTransactionKt.applyOperation(t, new RevertToOp(new KVEntryReference<CPVersion>(from, CPVersion.Companion.getDESERIALIZER()), new KVEntryReference<CPVersion>(to, CPVersion.Companion.getDESERIALIZER())));
        return Unit.INSTANCE;
    });

    Pair<List<IAppliedOperation>, ITree> operationsAndTree = (Pair<List<IAppliedOperation>, ITree>) branch.getOperationsAndTree();
    var newVersion = CLVersion.Companion.createRegularVersion(
            client.getIdGenerator().generate(),
            LocalDateTime.now().toString(),
            author != null ? author : "<server>",
            (CLTree) operationsAndTree.getSecond(),
            version,
            operationsAndTree.getFirst().stream().map(IAppliedOperation::getOriginalOp).toArray(IOperation[]::new)
    );

    client.put(repositoryAndBranch.getBranchKey(), newVersion.write());
  }

  public Set<RepositoryAndBranch> getKnownRepositoryIds() {
    Set<RepositoryAndBranch> result = new HashSet<>();
    String infoVersionHash = client.get(new RepositoryId("info").getBranchKey());
    CLVersion infoVersion = new CLVersion(infoVersionHash, client.getStoreCache());
    IBranch infoBranch = new MetaModelBranch(new PBranch(infoVersion.getTree(), new IdGeneratorDummy()));
    infoBranch.runReadT(t -> {
      for (long infoNodeId : t.getChildren(ITree.ROOT_ID, "info")) {
        for (long repositoryNodeId : t.getChildren(infoNodeId, "repositories")) {
          String repositoryId = t.getProperty(repositoryNodeId, "id");
          result.add(new RepositoryAndBranch(repositoryId));
          for (long branchNodeId : t.getChildren(repositoryNodeId, "branches")) {
            String branchName = t.getProperty(branchNodeId, "name");
            result.add(new RepositoryAndBranch(repositoryId, branchName));
          }
        }
      }
      return Unit.INSTANCE;
    });

    return result;
  }

  public void buildMainPage(PrintWriter out) {
    out.append("<html>");
    out.append("<head>");
    out.append("<style>");
    out.append("</style>");
    out.append("</head>");
    out.append("<body>");
    out.append("<h1>Choose Repository</h1>");
    out.append("<ul>");

    for (RepositoryAndBranch repositoryAndBranch : getKnownRepositoryIds()) {
      out.append("<li><a href='")
              .append(escapeURL(repositoryAndBranch.repository))
              .append("/")
              .append(escapeURL(repositoryAndBranch.branch))
              .append("/'>");
      out.append(escape(repositoryAndBranch.toString()));
      out.append("</a></li>");
    }
    out.append("</ul>");

    out.append("</body>");
    out.append("</html>");
  }

  protected void buildRepositoryPage(final PrintWriter out, RepositoryAndBranch repositoryAndBranch, String headHash, final int skip, final int limit) {
    out.append("<html>");
    out.append("<head>");
    out.append("<style>");
    out.append("table {");
    out.append("  border-collapse: collapse;");
    out.append("  font-family: sans-serif;");
    out.append("  margin: 25px 0;");
    out.append("  font-size: 0.9em;");
    out.append("  border-radius:6px;");
    out.append("}");
    out.append("thead tr {");
    out.append("  background-color: #009879;");
    out.append("  color: #ffffff;");
    out.append("  text-align: left;");
    out.append("}");
    out.append("th {");
    out.append("  padding: 12px 15px;");
    out.append("}");
    out.append("td {");
    out.append("  padding: 3px 15px;");
    out.append("}");
    out.append("tbody tr {");
    out.append("  border-bottom: 1px solid #dddddd;");
    out.append("  border-left: 1px solid #dddddd;");
    out.append("  border-right: 1px solid #dddddd;");
    out.append("}");
    out.append("tbody tr:nth-of-type(even) {");
    out.append("  background-color: #f3f3f3;");
    out.append("}");
    out.append("tbody tr:last-of-type");
    out.append("  border-bottom: 2px solid #009879;");
    out.append("}");
    out.append("tbody tr.active-row {");
    out.append("  font-weight: bold;");
    out.append("  color: #009879;");
    out.append("}");
    out.append("ul {");
    out.append("  padding-left: 15px;");
    out.append("}");
    out.append(".hash {");
    out.append("  color: #888;");
    out.append("}");
    out.append(".BtnGroup {");
    out.append("  display: inline-block;");
    out.append("  vertical-align: middle;");
    out.append("}");
    out.append(".BtnGroup-item {");
    out.append("  background-color: #f6f8fa;");
    out.append("  border: 1px solid rgba(27,31,36,0.15);");
    out.append("  padding: 5px 16px;");
    out.append("  position: relative;");
    out.append("  float: left;");
    out.append("  border-right-width: 0;");
    out.append("  border-radius: 0;");
    out.append("}");
    out.append(".BtnGroup-item:first-child {");
    out.append("  border-top-left-radius: 6px;");
    out.append("  border-bottom-left-radius: 6px;");
    out.append("}");
    out.append(".BtnGroup-item:last-child {");
    out.append("  border-right-width: 1px;");
    out.append("  border-top-right-radius: 6px;");
    out.append("  border-bottom-right-radius: 6px;");
    out.append("}");
    out.append("</style>");
    out.append("</head>");
    out.append("<body>");

    final CLVersion latestVersion = new CLVersion(client.get(repositoryAndBranch.getBranchKey()), client.getStoreCache());
    final CLVersion headVersion = ((headHash == null || headHash.length() == 0) ? latestVersion : new CLVersion(headHash, client.getStoreCache()));
    CLVersion version = headVersion;
    int rowIndex = 0;

    out.append("<h1>History for Repository ");
    out.append(escape(repositoryAndBranch.toString()));
    out.append("</h1>");
    Runnable buttons = () -> {
        out.append("<div class='BtnGroup'>");
        if (skip == 0) {
          out.append("<a class='BtnGroup-item' href='?head=" + escapeURL(latestVersion.getHash()) + "&skip=0&limit=" + limit + "'>Newer</a>");
        } else {
          out.append("<a class='BtnGroup-item' href='?head=" + escapeURL(headVersion.getHash()) + "&skip=" + (Math.max(0, skip - limit)) + "&limit=" + limit + "'>Newer</a>");
        }
        out.append("<a class='BtnGroup-item' href='?head=" + escapeURL(headVersion.getHash()) + "&skip=" + (skip + limit) + "&limit=" + limit + "'>Older</a>");
        out.append("</div>");
    };
    buttons.run();
    out.append("<table>");
    out.append("<thead><tr><th>ID<br/>Hash</th><th>Author</th><th>Time</th><th>Operations</th><th></th></tr></thead><tbody>");
    while (version != null) {
      if (rowIndex >= skip) {
        createTableRow(out, version, latestVersion);
        if (version.isMerge()) {
          IDeserializingKeyValueStore store = version.getStore();
          for (CLVersion v : new LinearHistory(version.getBaseVersion().getHash()).load(version.getMergedVersion1(), version.getMergedVersion2())) {
            createTableRow(out, v, latestVersion);
            rowIndex++;
            if (rowIndex >= skip + limit) {
              break;
            }
          }
        }
      }
      rowIndex++;
      if (rowIndex >= skip + limit) {
        break;
      }
      version = version.getBaseVersion();
    }

    out.append("</tbody></table>");
    buttons.run();

    out.append("</body>");
    out.append("</html>");
  }

  public void createTableRow(PrintWriter out, CLVersion version, CLVersion latestVersion) {
    out.append("<tr>");
    out.append("<td>");
    out.append(Long.toHexString(version.getId()));
    out.append("<br/>");
    out.append("<span class='hash'>").append(version.getHash()).append("</span>");
    out.append("</td>");
    out.append("<td>");
    out.append(nbsp(escape(version.getAuthor())));
    out.append("</td>");
    out.append("<td style='white-space: nowrap;'>");
    out.append(escape(reformatTime(version.getTime())));
    out.append("</td>");
    out.append("<td>");
    String opsDescription;
    if (version.isMerge()) {
      opsDescription = "merge " + version.getMergedVersion1().getId() + " + " + version.getMergedVersion2().getId() + " (base " + version.getBaseVersion() + ")";
    } else {
      if (version.operationsInlined()) {
        opsDescription = "<ul><li>" + Streams.stream(version.getOperations()).map(Object::toString).collect(Collectors.joining("</li><li>")) + "</li></ul>";
      } else {
        opsDescription = "(" + version.getNumberOfOperations() + ") ";
      }
    }
    out.append(opsDescription);
    out.append("</td>");
    out.append("<td>");
    out.append("<form action='revert' method='POST'>");
    out.append("<input type='hidden' name='from' value='").append(escapeURL(latestVersion.getHash())).append("'/>");
    out.append("<input type='hidden' name='to' value='").append(escapeURL(version.getHash())).append("'/>");
    out.append("<input type='submit' value='Revert To'/>");
    out.append("</form>");
    out.append("</td>");
    out.append("</tr>");
  }

  public String reformatTime(String dateTimeStr) {
    LocalDateTime dateTime = LocalDateTime.parse(dateTimeStr);
    return dateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
  }

  public String escape(String text) {
    return StringEscapeUtils.escapeHtml4(text);
  }

  public String escapeURL(String text) {
    return URLEncoder.encode(text, StandardCharsets.UTF_8);
  }

  public String nbsp(String text) {
    if (text == null) return null;
    return text.replace(" ", "&nbsp;");
  }

  public int toInt(String text, int defaultValue) {
    try {
      if ((text != null && text.length() > 0)) {
        return Integer.parseInt(text);
      }
    } catch (NumberFormatException ex) {
    }
    return defaultValue;
  }

  private class RepositoryAndBranch {
    public final String repository;
    public final String branch;

    public RepositoryAndBranch(String repository, String branch) {
      this.repository = repository;
      this.branch = branch;
    }

    public RepositoryAndBranch(String repository) {
      this(repository, RepositoryId.DEFAULT_BRANCH);
    }

    public String getBranchKey() {
      return new RepositoryId(repository).getBranchKey(branch);
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) return true;
      if (o == null || getClass() != o.getClass()) return false;
      RepositoryAndBranch that = (RepositoryAndBranch) o;
      return Objects.equals(repository, that.repository) && Objects.equals(branch, that.branch);
    }

    @Override
    public int hashCode() {
      return Objects.hash(repository, branch);
    }

    @Override
    public String toString() {
      return repository + "/" + branch;
    }
  }
}
