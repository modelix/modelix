/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.server;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

public class ModelServer {
    private static final Logger LOG = LogManager.getLogger(ModelServer.class);
    private static final Pattern HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{43}");
    public static final String PROTECTED_PREFIX = "$$$";

    private IStoreClient storeClient;

    public ModelServer(IStoreClient storeClient) {
        this.storeClient = storeClient;
    }

    public JSONArray collect(String rootKey) {
        JSONArray result = new JSONArray();
        Set<String> processed = new HashSet<>();
        Set<String> pending = new HashSet<>();
        pending.add(rootKey);

        while (!pending.isEmpty()) {
            List<String> keys = new ArrayList<>(pending);
            System.out.println("query " + keys.size() + " keys");
            pending.clear();
            List<String> values = storeClient.getAll(keys);
            for (int i = 0; i < keys.size(); i++) {
                String key = keys.get(i);
                String value = values.get(i);
                processed.add(key);

                JSONObject entry = new JSONObject();
                entry.put("key", key);
                entry.put("value", value);
                result.put(entry);

                if (value != null) {
                    Matcher matcher = HASH_PATTERN.matcher(value);
                    while (matcher.find()) {
                        String foundKey = matcher.group();
                        if (!processed.contains(foundKey)) {
                            pending.add(foundKey);
                        }
                    }
                }
            }
        }

        return result;
    }
}
