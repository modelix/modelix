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
package org.modelix.authorization

import com.auth0.jwt.interfaces.DecodedJWT
import io.ktor.server.auth.*

class AccessTokenPrincipal(val jwt: DecodedJWT) : Principal {
    fun getUserName(): String? = jwt.getClaim("email")?.asString()
        ?: jwt.getClaim("preferred_username")?.asString()
}