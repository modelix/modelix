package org.modelix.uiproxy;

import org.apache.commons.codec.digest.DigestUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

public class RedirectedURL {
    public static final String DEPLOYMENT_PREFIX = "ui-git-";

    public static RedirectedURL redirect(HttpServletRequest req) {
        String[] parts = req.getRequestURI().split("/", -1);
        if (parts.length < 4) return null;
        if (parts[0].length() != 0) return null;
        if (!"github".equals(parts[1])) return null;
        String remainingPath = Arrays.asList(parts).subList(4, parts.length).stream().reduce("/", (a, b) -> a + "/" + b);
        if (!remainingPath.startsWith("/")) remainingPath = "/" + remainingPath;
        if (remainingPath.startsWith("//")) remainingPath = remainingPath.substring(1);
        if (req.getQueryString() != null && req.getQueryString().length() > 0) {
            remainingPath += "?" + req.getQueryString();
        }
        return new RedirectedURL(
                remainingPath,
                "https://github.com/" + parts[2] + "/" + parts[3] + ".git"
        );
    }

    private String remainingPath;
    private String repositoryUrl;

    public RedirectedURL(String remainingPath, String repositoryUrl) {
        this.remainingPath = remainingPath;
        this.repositoryUrl = repositoryUrl;
    }

    public String getRemainingPath() {
        return remainingPath;
    }

    public String getRepositoryUrl() {
        return repositoryUrl;
    }

    public String getDeploymentName() {
        return DEPLOYMENT_PREFIX + DigestUtils.sha1Hex(getRepositoryUrl());
    }

    public String getRedirectedUrl(boolean websocket) {
        return (websocket ? "ws" : "http")  + "://" + getDeploymentName() + ":33333" + getRemainingPath();
    }
}
