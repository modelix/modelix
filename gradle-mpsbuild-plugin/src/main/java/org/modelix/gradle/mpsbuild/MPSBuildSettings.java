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
package org.modelix.gradle.mpsbuild;

import org.modelix.buildtools.Macros;

import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class MPSBuildSettings {
    private String mpsHome = null;
    private List<String> modules = new ArrayList<>();
    private List<String> includedPaths = new ArrayList<>();
    private Set<String> includedModuleNames = new HashSet<>();
    private Map<String, String> macros = new HashMap<>();

    public boolean usingExistingMps() {
        return getMpsHome() != null;
    }

    public void validate() {
        // nothing to check at the moment
    }

    public String getMpsHome() {
        return this.mpsHome;
    }

    public void setMpsHome(String mpsHome) {
        this.mpsHome = mpsHome;
    }

    public void search(String path) {
        this.modules.add(path);
    }

    public void include(String pathToInclude) {
        includePath(pathToInclude);
    }
    public void includePath(String pathToInclude) {
        includedPaths.add(pathToInclude);
    }
    public void includeModule(String moduleName) {
        includedModuleNames.add(moduleName);
    }
    public Set<String> getIncludedModuleNames() {
        if (includedModuleNames.isEmpty()) return null;
        return includedModuleNames;
    }

    public void macro(String name, String value) {
        macros.put(name, value);
    }

    public List<Path> resolveModulePaths(Path workdir) {
        if (modules.isEmpty()) return Collections.singletonList(workdir);
        return modules.stream().map(path -> workdir.resolve(path).normalize()).distinct().collect(Collectors.toList());
    }

    public List<Path> resolveIncludedModules(Path workdir) {
        if (includedPaths.isEmpty()) return null;
        return includedPaths.stream().map(path -> workdir.resolve(path).toAbsolutePath().normalize()).distinct().collect(Collectors.toList());
    }

    public Macros getMacros(Path workdir) {
        Map<String, Path> resolvedMacros = new HashMap<>();
        for (Map.Entry<String, String> macro : macros.entrySet()) {
            resolvedMacros.put(macro.getKey(), workdir.resolve(macro.getValue()).toAbsolutePath().normalize());
        }
        return new Macros(resolvedMacros);
    }
}
