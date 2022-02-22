/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.instancesmanager;

import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.server.Request;

import javax.annotation.Nullable;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

public class RedirectedURL {

    public static final String COOKIE_NAME = "modelix-mps-instance";

    public static RedirectedURL redirect(@Nullable Request baseRequest, HttpServletRequest request) {
        String path = request.getRequestURI();
        if (path.charAt(0) != '/') return null;
        int indexOfSlash = path.indexOf('/', 1);
        if (indexOfSlash < 0) return null;

        String originalDeploymentName = path.substring(1, indexOfSlash);
//        originalDeploymentName = originalDeploymentName.replace("*", "");
        String remainingPath = path.substring(indexOfSlash);

        if (request.getQueryString() != null) remainingPath += "?" + request.getQueryString();

        // TODO use the ID of an authenticated user instead (or in addition)
        String cookieValue = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (COOKIE_NAME.equals(cookie.getName())) {
                    cookieValue = cookie.getValue();
                }
            }
        }
        if (baseRequest != null) {
            baseRequest.getResponse().addCookie(new HttpCookie(COOKIE_NAME, cookieValue != null ? cookieValue : UUID.randomUUID().toString(), null, "/", 30 * 24 * 60 * 60, false, false));
        }

        if (cookieValue == null) {
            return new RedirectedURL(remainingPath, originalDeploymentName ,null, null);
        }

        return new RedirectedURL(remainingPath, originalDeploymentName, null, cookieValue);
    }

    public final String remainingPath;
    public final String originalDeploymentName;
    public String personalDeploymentName;
    public final String userId;

    public RedirectedURL(String remainingPath, String originalDeploymentName, String personalDeploymentName, String userId) {
        this.remainingPath = remainingPath;
        this.originalDeploymentName = originalDeploymentName;
        this.personalDeploymentName = personalDeploymentName;
        this.userId = userId;
    }

    public void noPersonalDeployment() {
        personalDeploymentName = null;
    }

    public String getRedirectedUrl(boolean websocket) {
        String url = (websocket ? "ws" : "http") + "://";
        url += personalDeploymentName != null ? personalDeploymentName : originalDeploymentName;
        if (remainingPath.startsWith("/ide/")) {
            url += ":8887" + remainingPath.substring("/ide".length());
        } else {
            url += ":33333" + remainingPath;
        }
        return url;
    }
}
