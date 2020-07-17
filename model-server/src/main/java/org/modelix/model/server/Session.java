/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
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

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.websocket.api.RemoteEndpoint;

public class Session {
    private static final AtomicLong ID_SEQUENCE = new AtomicLong();

    private long id = ID_SEQUENCE.incrementAndGet();
    private RemoteEndpoint connection;
    private Set<String> subscribedKeys = new HashSet<String>();

    public Session(RemoteEndpoint conn) {
        connection = conn;
    }

    public void dispose() {}

    public RemoteEndpoint getConnection() {
        return this.connection;
    }

    public boolean isSubscribed(String key) {
        return subscribedKeys.contains(key);
    }

    public void subscribe(String key) {
        subscribedKeys.add(key);
    }

    public void unsubscribe(String key) {
        subscribedKeys.remove(key);
    }

    public long getId() {
        return id;
    }
}
