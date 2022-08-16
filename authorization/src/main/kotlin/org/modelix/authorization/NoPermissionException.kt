/*
 * Copyright 2003-2022 JetBrains s.r.o.
 *
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
package org.modelix.authorization

class NoPermissionException(val user: AccessTokenPrincipal?, val resourceId: String?, val scope: String?, message: String)
    : RuntimeException(message) {

        constructor(message: String)
            : this(null, null, null, message)
        constructor(user: AccessTokenPrincipal, permissionId: String, type: String)
            : this(user, permissionId, type, "${user.getUserName()} has no $type permission on '$permissionId'")

    }