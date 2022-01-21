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
package org.modelix.workspace.manager

import org.modelix.model.client.RestWebModelClient
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.SerializationUtil

class WorkspaceManager {

    private val modelClient: RestWebModelClient = RestWebModelClient("http://localhost:31963/model/")

    fun newWorkspaceId(): String {
        return SerializationUtil.longToHex(modelClient.idGenerator.generate())
    }
}