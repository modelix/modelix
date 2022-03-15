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
package org.modelix.buildtools

import java.nio.file.Path
import kotlin.io.path.absolutePathString

class Macros(val macros: Map<String, Path> = mapOf()) {
    fun with(key: String, value: Path) = with(key to value)
    fun with(vararg entry: Pair<String, Path>) = Macros(macros + entry)
    fun resolve(input: String): Path {
        var path = input
        for (macro in macros) {
            path = path.replace("\${" + macro.key + "}", macro.value.absolutePathString())
        }
        return Path.of(path).normalize()
    }
}