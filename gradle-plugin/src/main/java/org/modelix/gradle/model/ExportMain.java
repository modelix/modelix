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

import com.intellij.ide.plugins.IdeaPluginDescriptor;
import com.intellij.ide.plugins.PluginManager;
import org.apache.commons.text.StringEscapeUtils;

import java.io.File;

public class ExportMain {

    public static final String PROPERTY_PREFIX = "modelix.export.";

    private static boolean DEBUG = false;

    private static void processSetting(String key, String value) {
        String settingValue = value;
        if (isJsonValuedProperty(key)) {
            settingValue = StringEscapeUtils.unescapeJson(settingValue);
        }
        System.out.println("(setting) " + key + " = " + settingValue);
        System.setProperty(key, settingValue);
        if (key.equals(PROPERTY_PREFIX + EnvironmentLoader.Key.DEBUG.getCode())) {
            DEBUG = Boolean.parseBoolean(value);
        }
    }

    private static boolean isJsonValuedProperty(String key) {
        return key.endsWith(EnvironmentLoader.Key.ADDITIONAL_PLUGINS.getPropertyKey())
                || key.endsWith(EnvironmentLoader.Key.ADDITIONAL_PLUGIN_DIRS.getPropertyKey());
    }

    private static void debugMessage(String message) {
        if (DEBUG) {
            System.out.println(message);
        }
    }

    public static void main(String[] args) {
        System.out.println("[ExportMain]");
        try {
            for (int i = 1; i < args.length; i += 2) {
                String key = PROPERTY_PREFIX + args[i - 1];
                String value = args[i];
                processSetting(key, value);
            }
            String pathKey = PROPERTY_PREFIX + "path";
            String pathValue = new File("exportedModelixModules").getAbsolutePath();
            processSetting(pathKey, pathValue);
            debugMessage("Loading environment");
            EnvironmentLoader.loadEnvironment((File) null);
            debugMessage("Environment loaded");
            debugMessage("Loaded plugins:");
            for (IdeaPluginDescriptor p : PluginManager.getPlugins()) {
                debugMessage("    " + p.getName() + " (" + p.getPluginId() + ")");
            }
            debugMessage("List of loaded plugins ended.");
        } catch (Exception ex) {
            System.err.println("Exception in ExportMain");
            System.out.println(ex.getMessage());
            ex.printStackTrace();
            System.exit(1);
        }
    }
}
