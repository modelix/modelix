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

import org.apache.commons.collections4.map.HashedMap;

import java.util.Collections;
import java.util.Map;

public class DeploymentTimeouts {

    public static final DeploymentTimeouts INSTANCE = new DeploymentTimeouts();

    private final Map<String, Long> timeouts = Collections.synchronizedMap(new HashedMap<>());

    public void update(String deploymentName) {
        String timeoutStr = System.getProperty("DEPLOYMENT_USER_COPY_TIMEOUT");
        if (timeoutStr == null) timeoutStr = System.getenv("DEPLOYMENT_USER_COPY_TIMEOUT");
        int timeout;
        try {
            timeout = Integer.parseInt(timeoutStr);
        } catch (NumberFormatException ex) {
            timeout = 10;
        }
        timeouts.put(deploymentName, System.currentTimeMillis() + timeout*60*1000);
    }

    public boolean isTimedOut(String deploymentName) {
        synchronized (timeouts) {
            Long timeout = timeouts.get(deploymentName);
            if (timeout == null) return true;
            if (timeout > System.currentTimeMillis()) return false;
            timeouts.remove(deploymentName);
            return true;
        }
    }
}
