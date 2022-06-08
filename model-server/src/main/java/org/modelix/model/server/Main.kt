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

import com.beust.jcommander.JCommander
import com.beust.jcommander.Parameter
import com.beust.jcommander.converters.BooleanConverter
import com.beust.jcommander.converters.IntegerConverter
import com.beust.jcommander.converters.StringConverter
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import org.apache.commons.io.FileUtils
import org.apache.ignite.Ignition
import org.eclipse.jetty.server.Server
import org.eclipse.jetty.server.handler.HandlerList
import org.eclipse.jetty.servlet.ServletContextHandler
import org.slf4j.LoggerFactory
import java.io.File
import java.io.FileReader
import java.io.FileWriter
import java.io.IOException
import java.net.InetAddress
import java.net.InetSocketAddress
import java.nio.charset.StandardCharsets
import java.sql.Connection
import java.sql.DatabaseMetaData
import java.sql.ResultSet
import java.sql.SQLException
import java.util.LinkedList
import javax.sql.DataSource

internal class CmdLineArgs {
    @Parameter(names = ["-secret"], description = "Path to the secretfile", converter = FileConverter::class)
    var secretFile = File("/secrets/modelsecret/modelsecret.txt")

    @Parameter(
        names = ["-jdbcconf"],
        description = "Path to the JDBC configuration file",
        converter = FileConverter::class
    )
    var jdbcConfFile: File? = null

    @Parameter(names = ["-inmemory"], description = "Use in-memory storage", converter = BooleanConverter::class)
    var inmemory = false

    @Parameter(names = ["-dumpout"], description = "Dump in memory storage", converter = StringConverter::class)
    var dumpOutName: String? = null

    @Parameter(names = ["-dumpin"], description = "Read dump in memory storage", converter = StringConverter::class)
    var dumpInName: String? = null

    @Parameter(names = ["-port"], description = "Set port", converter = IntegerConverter::class)
    var port: Int? = null

    @Parameter(names = ["-set"], description = "Set values", arity = 2)
    var setValues: List<String> = LinkedList<String>()

    @Parameter(
        names = ["-schemainit"],
        description = "Initialize the schema, if necessary",
        converter = BooleanConverter::class
    )
    var schemaInit = false
}

internal class SqlUtils(private val connection: Connection) {
    @Throws(SQLException::class)
    fun isSchemaExisting(schemaName: String?): Boolean {
        val metadata: DatabaseMetaData = connection.metaData
        val schemasRS: ResultSet = metadata.getSchemas()
        while (schemasRS.next()) {
            if (schemasRS.getString("table_schem") == schemaName) {
                return true
            }
        }
        return false
    }

    @Throws(SQLException::class)
    fun isTableExisting(schemaName: String?, tableName: String): Boolean {
        val metadata: DatabaseMetaData = connection.metaData
        val schemasRS: ResultSet = metadata.getTables(null, schemaName, tableName, null)
        while (schemasRS.next()) {
            if (schemasRS.getString("table_schem") == schemaName && schemasRS.getString("table_name") == tableName) {
                return true
            }
        }
        return false
    }

    @Throws(SQLException::class)
    fun ensureTableIsPresent(
        schemaName: String?, username: String?, tableName: String, creationSql: String?
    ) {
        if (!isTableExisting(schemaName, tableName)) {
            val stmt = connection.createStatement()
            stmt.execute(creationSql)
        }
        val stmt = connection.createStatement()
        stmt.execute(
            "GRANT ALL ON TABLE $schemaName.$tableName TO $username;"
        )
    }

    @Throws(SQLException::class)
    fun ensureSchemaIsPresent(schemaName: String?, username: String?) {
        if (!isSchemaExisting(schemaName)) {
            val stmt = connection.createStatement()
            stmt.execute("CREATE SCHEMA $schemaName;")
        }
        val stmt = connection.createStatement()
        stmt.execute("GRANT ALL ON SCHEMA $schemaName TO $username;")
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(SqlUtils::class.java)
    }
}

object Main {
    private val LOG = LoggerFactory.getLogger(Main::class.java)
    const val DEFAULT_PORT = 28101
    private const val DEFAULT_DB_USER_NAME = "modelix"
    private const val DEFAULT_SCHEMA_NAME = "modelix"
    private fun ensureSchemaInitialization(dataSource: DataSource) {
        var userName = System.getProperty("jdbc.user")
        if (userName == null) {
            userName = DEFAULT_DB_USER_NAME
        }
        var schemaName = System.getProperty("jdbc.schema")
        if (schemaName == null) {
            schemaName = DEFAULT_SCHEMA_NAME
        }
        LOG.info("ensuring schema initialization")
        LOG.info("  schema: $schemaName")
        LOG.info("  db username: $userName")
        try {
            val sqlUtils = SqlUtils(dataSource.connection)
            sqlUtils.ensureSchemaIsPresent(schemaName, userName)
            sqlUtils.ensureTableIsPresent(
                schemaName,
                userName,
                "model",
                """CREATE TABLE $schemaName.model
(
    key character varying NOT NULL,
    value character varying,
    reachable boolean,
    CONSTRAINT kv_pkey PRIMARY KEY (key)
);"""
            )
        } catch (e: SQLException) {
            e.printStackTrace()
        }
    }

    @JvmStatic
    fun main(args: Array<String>) {
        val cmdLineArgs = CmdLineArgs()
        JCommander(cmdLineArgs).parse(*args)
        LOG.info("Max memory (bytes): " + Runtime.getRuntime().maxMemory())
        LOG.info("Server process started")
        LOG.info("In memory: " + cmdLineArgs.inmemory)
        LOG.info("Path to secret file: " + cmdLineArgs.secretFile)
        LOG.info("Path to JDBC configuration file: " + cmdLineArgs.jdbcConfFile)
        LOG.info("Schema initialization: " + cmdLineArgs.schemaInit)
        LOG.info("Set values: " + cmdLineArgs.setValues)
        if (cmdLineArgs.dumpOutName != null && !cmdLineArgs.inmemory) {
            throw RuntimeException("For now dumps are supported only with the inmemory option")
        }
        if (cmdLineArgs.dumpInName != null && !cmdLineArgs.inmemory) {
            throw RuntimeException("For now dumps are supported only with the inmemory option")
        }
        try {
            val portStr = System.getenv("MODELIX_SERVER_PORT")
            var port = portStr?.toInt() ?: 28101
            if (cmdLineArgs.port != null) {
                port = cmdLineArgs.port!!
            }
            LOG.info("Port: $port")
            val bindTo: InetSocketAddress = InetSocketAddress(InetAddress.getByName("0.0.0.0"), port)
            val storeClient: IStoreClient
            if (cmdLineArgs.inmemory) {
                if (cmdLineArgs.jdbcConfFile != null) {
                    LOG.warn("JDBC conf file is ignored when in-memory flag is set")
                }
                if (cmdLineArgs.schemaInit) {
                    LOG.warn("Schema initialization is ignored when in-memory flag is set")
                }
                storeClient = InMemoryStoreClient()
                if (cmdLineArgs.dumpInName != null) {
                    val file = File(cmdLineArgs.dumpInName)
                    val keys = storeClient.load(FileReader(file))
                    println(
                        "Values loaded from " + file.absolutePath + " (" + keys + ")"
                    )
                }
                if (cmdLineArgs.dumpOutName != null) {
                    Runtime.getRuntime()
                        .addShutdownHook(
                            DumpOutThread(
                                storeClient,
                                cmdLineArgs.dumpOutName
                            )
                        )
                }
            } else {
                storeClient = IgniteStoreClient(cmdLineArgs.jdbcConfFile)
                if (cmdLineArgs.schemaInit) {
                    val dataSource: DataSource = Ignition.loadSpringBean<DataSource>(
                        Main::class.java.getResource("ignite.xml"), "dataSource"
                    )
                    ensureSchemaInitialization(dataSource)
                }
            }
            var i = 0
            while (i < cmdLineArgs.setValues.size) {
                storeClient.put(cmdLineArgs.setValues[i], cmdLineArgs.setValues[i + 1])
                i += 2
            }
            val modelServer = KtorModelServer(storeClient)
            val localModelClient = LocalModelClient(storeClient)
            val sharedSecretFile = cmdLineArgs.secretFile
            if (sharedSecretFile.exists()) {
                modelServer.setSharedSecret(
                    FileUtils.readFileToString(sharedSecretFile, StandardCharsets.UTF_8)
                )
            }

            val historyHandler = HistoryHandler(localModelClient)
            val ktorServer: NettyApplicationEngine = embeddedServer(Netty, port = DEFAULT_PORT) {
                modelServer.init(this)
                historyHandler.init(this)
            }
            ktorServer.start()
            LOG.info("Server started")
            Runtime.getRuntime().addShutdownHook(Thread {
                try {
                    ktorServer.stop()
                } catch (ex: Exception) {
                    System.err.println("Exception: " + ex.message)
                    ex.printStackTrace()
                }
            })
        } catch (ex: Exception) {
            println("Server failed: " + ex.message)
            ex.printStackTrace()
        }
    }

    private class DumpOutThread internal constructor(inMemoryStoreClient: InMemoryStoreClient, dumpName: String?) :
        Thread(
            Runnable {
                var fw: FileWriter? = null
                try {
                    fw = FileWriter(File(dumpName))
                    inMemoryStoreClient.dump(fw!!)
                    println("[Saved memory store into $dumpName]")
                } catch (e: IOException) {
                    e.printStackTrace()
                } finally {
                    if (fw != null) {
                        try {
                            fw!!.close()
                        } catch (e: IOException) {
                            e.printStackTrace()
                        }
                    }
                }
            })
}