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
package org.modelix.model.server

import org.apache.ignite.cache.store.jdbc.dialect.BasicJdbcDialect
import org.apache.ignite.internal.util.typedef.F

class PostgresDialect : BasicJdbcDialect() {
    override fun hasMerge(): Boolean {
        return true
    }

    override fun mergeQuery(
        fullTblName: String, keyCols: Collection<String>, uniqCols: Collection<String>
    ): String {
        val cols = F.concat(false, keyCols, uniqCols)
        val updPart = mkString(
            uniqCols,
            { String.format("%s = excluded.%s", it, it) },
            "",
            ", ",
            ""
        )
        return String.format(
            "INSERT INTO %s (%s) VALUES (%s) ON CONFLICT (%s) DO UPDATE SET %s",
            fullTblName,
            mkString(cols, ", "),
            repeat("?", cols.size, "", ",", ""),
            mkString(keyCols, ", "),
            updPart
        )
    }
}