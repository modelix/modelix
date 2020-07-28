package org.modelix.uiproxy;

import org.apache.commons.codec.digest.DigestUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class RedirectedURL {
    public static final String DEPLOYMENT_PREFIX = "ui-git-";

    public static RedirectedURL redirect(HttpServletRequest req) {
        List<String> parts = Arrays.asList(req.getRequestURI().split("/", -1));
        if (parts.size() > 0 && parts.get(0).length() == 0) parts = parts.subList(1, parts.size());

        if (parts.size() < 3) return null;
        if (!parts.get(0).equals("github")) return null;

        String repositoryUrl = "https://github.com/" + parts.get(1) + "/" + parts.get(2) + ".git";
        String githubRepositoryName = parts.get(1) + "/" + parts.get(2);
        parts = parts.subList(3, parts.size());

        String commitId = null;
        if (parts.size() >= 2 && parts.get(0).equals("commit")) {
            commitId = parts.get(1);
            parts = parts.subList(2, parts.size());
        }

        String remainingPath = parts.stream().reduce((a, b) -> a + "/" + b).orElse(null);
        if (remainingPath != null) remainingPath = "/" + remainingPath;
        if (remainingPath != null && req.getQueryString() != null && req.getQueryString().length() > 0) {
            remainingPath += "?" + req.getQueryString();
        }
        return new RedirectedURL(
                remainingPath,
                repositoryUrl,
                commitId,
                githubRepositoryName
        );
    }

    private String remainingPath;
    private String repositoryUrl;
    private String commitId;
    private String githubRepositoryName;

    public RedirectedURL(String remainingPath, String repositoryUrl, String commitId, String githubRepositoryName) {
        this.remainingPath = remainingPath;
        this.repositoryUrl = repositoryUrl;
        this.commitId = commitId;
        this.githubRepositoryName = githubRepositoryName;
    }

    public String getRemainingPath() {
        return remainingPath;
    }

    public String getRepositoryUrl() {
        return repositoryUrl;
    }

    public String getCommitId() {
        return commitId;
    }

    public String getGithubRepositoryName() {
        return githubRepositoryName;
    }

    public String getDeploymentName() {
        return DEPLOYMENT_PREFIX + DigestUtils.sha1Hex(getRepositoryUrl() + "@" + commitId);
    }

    public String getRedirectedUrl(boolean websocket) {
        return (websocket ? "ws" : "http")  + "://" + getDeploymentName() + ":33333" + getRemainingPath();
    }
}
