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

import org.gradle.api.artifacts.Configuration;
import org.gradle.api.internal.provider.DefaultProperty;
import org.gradle.api.provider.Property;

import java.io.File;
import java.util.List;
import java.util.LinkedList;
import java.util.Collections;
import java.util.stream.Collectors;

public class ModelixModelSettings {

    private Configuration mpsConfig = null;
    private Configuration pluginsConfig = null;

    public void setMpsConfig(Configuration mpsConfig) {
        this.mpsConfig = mpsConfig;
    }

    public Configuration getMpsConfig() {
        return this.mpsConfig;
    }

    public void setPluginsConfig(Configuration pluginsConfig) {
        this.pluginsConfig = pluginsConfig;
    }

    public Configuration getPluginsConfig() {
        return this.pluginsConfig;
    }

    private class PluginsEntry {
        File dir;
        List<String> idsToExclude;
        PluginsEntry(File dir, List<String> idsToExclude) {
            this.dir = dir;
            this.idsToExclude = idsToExclude;
        }
    }

    private class PluginConf {
        public String path;
        public String id;
    }

    private String mpsPath = null;
    private String mpsExtensionsArtifactsPath = null;
    private String modelixArtifactsPath = null;
    private String serverUrl = "http://localhost:28101/";
    private String repositoryId = "default";
    private String branchName = "master";
    private boolean debug = false;
    private int timeoutSeconds = 120;

    List<String> additionalLibraries = new LinkedList<String>();
    List<String> additionalLibraryDirs = new LinkedList<String>();
    List<PluginConf> additionalPlugins = new LinkedList<PluginConf>();
    List<PluginsEntry> additionalPluginsDirs = new LinkedList<PluginsEntry>();

    public boolean usingExistingMps() {
        return getMpsPath() != null;
    }

    public void validate() {
        boolean valid = true;
        if (usingExistingMps()) {
            if (this.mpsExtensionsArtifactsPath == null) {
                System.err.println("When specifying MPS path also MPS extensions path must be specified");
                valid = false;
            }
            if (this.modelixArtifactsPath == null) {
                System.err.println("When specifying MPS path also Modelix path must be specified");
                valid = false;
            }
        }
        if (!valid) {
            throw new RuntimeException("Invalid Modelix Plugin configuration");
        }
    }

    public File getMpsLocation() {
        return this.usingExistingMps() ? new File(getMpsPath()) : new File("mpsForModelixExport");
    }

    public File getMpsExtensionsLocation() {
        return this.usingExistingMps() ? new File(getMpsExtensionsArtifactsPath()) : new File(new File("mpsForModelixExport"), "plugins");
    }

    public File getModelixLocation() {
        return this.usingExistingMps() ? new File(getModelixArtifactsPath()) : new File(new File("mpsForModelixExport"), "plugins");
    }

    public String getMpsPath() {
        return this.mpsPath;
    }

    public void setMpsPath(String mpsPath) {
        System.out.println("setting MPS Path");
        this.mpsPath = mpsPath;
    }

    public String getMpsExtensionsArtifactsPath() {
        return this.mpsExtensionsArtifactsPath;
    }

    public void setMpsExtensionsArtifactsPath(String mpsExtensionsArtifactsPath) {
        this.mpsExtensionsArtifactsPath = mpsExtensionsArtifactsPath;
    }

    public String getModelixArtifactsPath() {
        return this.modelixArtifactsPath;
    }

    public void setModelixArtifactsPath(String modelixArtifactsPath) {
        this.modelixArtifactsPath = modelixArtifactsPath;
    }

    public String getServerUrl() {
        return serverUrl;
    }

    public void setServerUrl(String serverUrl) {
        this.serverUrl = serverUrl;
    }

    public String getRepositoryId() {
        return repositoryId;
    }

    public void setRepositoryId(String repositoryId) {
        this.repositoryId = repositoryId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public int getTimeout() {
        return timeoutSeconds;
    }

    public void setTimeout(int timeoutSeconds) {
        this.timeoutSeconds = timeoutSeconds;
    }

    public boolean isDebug() {
        return debug;
    }

    public void setDebug(boolean debug) {
        this.debug = debug;
    }

    public void addLibrary(String library) {
        additionalLibraries.add(library);
    }

    public void addPluginDir(File dir) {
        addPluginDir(dir, Collections.emptyList());
    }

    public void addPluginDir(File dir, List<String> idsToExclude) {
        additionalPluginsDirs.add(new PluginsEntry(dir, idsToExclude));
    }

    public void addPlugin(String path, String id) {
        PluginConf pc = new PluginConf();
        pc.path = path;
        pc.id = id;
        additionalPlugins.add(pc);
    }

    public void addLibraryDir(File dir) {
        additionalLibraryDirs.add(dir.getAbsolutePath());
    }

    public String getAdditionalLibrariesAsString() {
        return this.additionalLibraries.stream().map(o -> o.toString()).collect(Collectors.joining(","));
    }

    public String getAdditionalPluginDirsAsString() {
        return this.additionalPluginsDirs.stream().map(o -> o.dir.getPath()+"#"+o.idsToExclude.stream().collect(Collectors.joining(","))).collect(Collectors.joining("$"));
    }

    public String getAdditionalPluginsAsString() {
        return this.additionalPlugins.stream().map(o -> o.id+"#"+o.path).collect(Collectors.joining(","));
    }

    public String getAdditionalLibraryDirsAsString() {
        return this.additionalLibraryDirs.stream().map(o -> o.toString()).collect(Collectors.joining(","));
    }
}
