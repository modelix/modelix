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

import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class MPSBuildSettings {
    private String mpsHome = null;
    private List<String> modules = new ArrayList<>();

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

    public void modules(String path) {
        this.modules.add(path);
    }

    public List<Path> resolveModulePaths(Path workdir) {
        if (modules.isEmpty()) return Collections.singletonList(workdir);
        return modules.stream().map(path -> workdir.resolve(path).normalize()).distinct().collect(Collectors.toList());
    }
}
