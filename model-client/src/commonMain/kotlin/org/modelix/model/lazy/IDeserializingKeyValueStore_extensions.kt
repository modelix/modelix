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

package org.modelix.model.lazy

import org.modelix.model.persistent.CPNode
import org.modelix.model.persistent.HashUtil
import kotlin.jvm.JvmStatic

object IDeserializingKeyValueStore_extensions {
    fun put(_this: IDeserializingKeyValueStore, deserialized: Any, serialized: String?) {
        _this.put(HashUtil.sha256(serialized!!), deserialized, serialized)
    }

    @JvmStatic
    fun put(_this: IDeserializingKeyValueStore, element: CPNode) {
        put(_this, element, element.serialize())
    }
}
