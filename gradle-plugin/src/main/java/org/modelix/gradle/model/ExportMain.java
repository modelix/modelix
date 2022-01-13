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
import org.apache.log4j.Logger;

import javax.swing.*;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class ExportMain {

    public static final String PROPERTY_PREFIX = "modelix.export.";

    public static void main(String[] args) {
        try {
            for (int i = 1; i < args.length; i+=2) {
                String key = PROPERTY_PREFIX + args[i - 1];
                String value = args[i];
                System.out.println(key + " = " + value);
                System.setProperty(key, value);
            }
            System.setProperty(PROPERTY_PREFIX + "path", new File("exportedModelixModules").getAbsolutePath());
            EnvironmentLoader.loadEnvironment((File) null);
            System.out.println("Environment loaded");
            System.out.println("Loaded plugins:");
            for (IdeaPluginDescriptor p : PluginManager.getPlugins()) {
                System.out.println("    " + p.getName() + " (" + p.getPluginId() + ")");
            }
            System.out.println("Export main returned");
        } catch (Exception ex) {
            System.out.println("Export main exception");
            System.out.println(ex.getMessage());
            ex.printStackTrace();
            System.exit(1);
        }
    }
}
