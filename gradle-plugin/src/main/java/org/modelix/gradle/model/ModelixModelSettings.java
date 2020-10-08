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
package org.modelix.gradle.model;

import org.gradle.api.GradleException;
import org.gradle.api.artifacts.Configuration;
import org.gradle.api.artifacts.ResolvedConfiguration;
import org.gradle.api.artifacts.ResolvedDependency;

import java.io.File;
import java.util.Optional;
import java.util.Set;

public class ModelixModelSettings {
    private Configuration mpsConfig;
    private String serverUrl = "http://localhost:28101/";
    private String treeId = "default";
    private String branchName = "master";
    private boolean debug = false;

    public Configuration getMpsConfig() {
        return mpsConfig;
    }

    public void setMpsConfig(Configuration mpsConfig) {
        this.mpsConfig = mpsConfig;
    }

    public String getServerUrl() {
        return serverUrl;
    }

    public void setServerUrl(String serverUrl) {
        this.serverUrl = serverUrl;
    }

    public String getTreeId() {
        return treeId;
    }

    public void setTreeId(String treeId) {
        this.treeId = treeId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public boolean isDebug() {
        return debug;
    }

    public void setDebug(boolean debug) {
        this.debug = debug;
    }

    public String getMpsVersion() {
        ResolvedConfiguration resolved = getMpsConfig().getResolvedConfiguration();
        Set<ResolvedDependency> deps = resolved.getFirstLevelModuleDependencies();
        Optional<ResolvedDependency> mpsDep = deps.stream()
                .filter(it -> "com.jetbrains".equals(it.getModuleGroup()) && "mps".equals(it.getModuleName()))
                .findFirst();
        if (mpsDep.isEmpty()) throw new GradleException("MPS configuration doesn't contain MPS");
        return mpsDep.get().getModuleVersion();
    }
}
