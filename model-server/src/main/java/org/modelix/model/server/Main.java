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

import com.beust.jcommander.JCommander;
import com.beust.jcommander.Parameter;
import com.beust.jcommander.converters.BooleanConverter;
import com.beust.jcommander.converters.IntegerConverter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.sql.DataSource;

import com.beust.jcommander.converters.StringConverter;
import org.apache.commons.io.FileUtils;
import org.apache.ignite.Ignition;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.servlet.ServletContextHandler;

class CmdLineArgs {

    @Parameter(
            names = "-secret",
            description = "Path to the secretfile",
            converter = FileConverter.class)
    File secretFile = new File("/secrets/modelsecret/modelsecret.txt");

    @Parameter(
            names = "-jdbcconf",
            description = "Path to the JDBC configuration file",
            converter = FileConverter.class)
    File jdbcConfFile = null;

    @Parameter(
            names = "-inmemory",
            description = "Use in-memory storage",
            converter = BooleanConverter.class)
    Boolean inmemory = false;

    @Parameter(
            names = "-dumpout",
            description = "Dump in memory storage",
            converter = StringConverter.class)
    String dumpOutName;

    @Parameter(
            names = "-dumpin",
            description = "Read dump in memory storage",
            converter = StringConverter.class)
    String dumpInName;

    @Parameter(names = "-port", description = "Set port", converter = IntegerConverter.class)
    Integer port = null;

    @Parameter(names = "-set", description = "Set values", arity = 2)
    List<String> setValues = new LinkedList<>();

    @Parameter(
            names = "-schemainit",
            description = "Initialize the schema, if necessary",
            converter = BooleanConverter.class)
    Boolean schemaInit = false;
}

class SqlUtils {
    private static final Logger LOG = Logger.getLogger(SqlUtils.class);
    private Connection connection;

    SqlUtils(Connection connection) {
        this.connection = connection;
    }

    boolean isSchemaExisting(String schemaName) throws SQLException {
        DatabaseMetaData metadata = connection.getMetaData();
        ResultSet schemasRS = metadata.getSchemas();
        while (schemasRS.next()) {
            if (schemasRS.getString("table_schem").equals(schemaName)) {
                return true;
            }
        }
        return false;
    }

    boolean isTableExisting(String schemaName, String tableName) throws SQLException {
        DatabaseMetaData metadata = connection.getMetaData();
        ResultSet schemasRS = metadata.getTables(null, schemaName, tableName, null);
        while (schemasRS.next()) {
            if (schemasRS.getString("table_schem").equals(schemaName)
                    && schemasRS.getString("table_name").equals(tableName)) {
                return true;
            }
        }
        return false;
    }

    void ensureTableIsPresent(
            String schemaName, String username, String tableName, String creationSql)
            throws SQLException {
        if (!isTableExisting(schemaName, tableName)) {
            Statement stmt = connection.createStatement();
            stmt.execute(creationSql);
        }
        Statement stmt = connection.createStatement();
        stmt.execute(
                "GRANT ALL ON TABLE " + schemaName + "." + tableName + " TO " + username + ";");
    }

    void ensureSchemaIsPresent(String schemaName, String username) throws SQLException {
        if (!isSchemaExisting(schemaName)) {
            Statement stmt = connection.createStatement();
            stmt.execute("CREATE SCHEMA " + schemaName + ";");
        }
        Statement stmt = connection.createStatement();
        stmt.execute("GRANT ALL ON SCHEMA " + schemaName + " TO " + username + ";");
    }
}

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);
    public static final int DEFAULT_PORT = 28101;
    private static final String DEFAULT_DB_USER_NAME = "modelix";
    private static final String DEFAULT_SCHEMA_NAME = "modelix";

    private static void ensureSchemaInitialization(DataSource dataSource) {
        String userName = System.getProperty("jdbc.user");
        if (userName == null) {
            userName = DEFAULT_DB_USER_NAME;
        }
        String schemaName = System.getProperty("jdbc.schema");
        if (schemaName == null) {
            schemaName = DEFAULT_SCHEMA_NAME;
        }
        LOG.info("ensuring schema initialization");
        LOG.info("  schema: " + schemaName);
        LOG.info("  db username: " + userName);
        try {
            SqlUtils sqlUtils = new SqlUtils(dataSource.getConnection());
            sqlUtils.ensureSchemaIsPresent(schemaName, userName);
            sqlUtils.ensureTableIsPresent(
                    schemaName,
                    userName,
                    "model",
                    "CREATE TABLE "
                            + schemaName
                            + ".model\n"
                            + "(\n"
                            + "    key character varying NOT NULL,\n"
                            + "    value character varying,\n"
                            + "    reachable boolean,\n"
                            + "    CONSTRAINT kv_pkey PRIMARY KEY (key)\n"
                            + ");");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static class DumpOutThread extends Thread {

        DumpOutThread(InMemoryStoreClient inMemoryStoreClient, String dumpName) {
            super(() -> {
                FileWriter fw = null;
                try {
                    fw = new FileWriter(new File(dumpName));
                    inMemoryStoreClient.dump(fw);
                    System.out.println("[Saved memory store into " + dumpName + "]");
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    if (fw != null) {
                        try {
                            fw.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
        }

    }

    public static void main(String[] args) {
        CmdLineArgs cmdLineArgs = new CmdLineArgs();
        new JCommander(cmdLineArgs).parse(args);

        LOG.info("Max memory (bytes): " + Runtime.getRuntime().maxMemory());
        LOG.info("Server process started");
        LOG.info("In memory: " + cmdLineArgs.inmemory);
        LOG.info("Path to secret file: " + cmdLineArgs.secretFile);
        LOG.info("Path to JDBC configuration file: " + cmdLineArgs.jdbcConfFile);
        LOG.info("Schema initialization: " + cmdLineArgs.schemaInit);
        LOG.info("Set values: " + cmdLineArgs.setValues);

        if (cmdLineArgs.dumpOutName != null && !cmdLineArgs.inmemory) {
            throw new RuntimeException("For now dumps are supported only with the inmemory option");
        }
        if (cmdLineArgs.dumpInName != null && !cmdLineArgs.inmemory) {
            throw new RuntimeException("For now dumps are supported only with the inmemory option");
        }

        try {
            String portStr = System.getenv("MODELIX_SERVER_PORT");
            int port = portStr == null ? 28101 : Integer.parseInt(portStr);
            if (cmdLineArgs.port != null) {
                port = cmdLineArgs.port;
            }
            LOG.info("Port: " + port);
            InetSocketAddress bindTo =
                    new InetSocketAddress(InetAddress.getByName("0.0.0.0"), port);
            IStoreClient storeClient;
            if (cmdLineArgs.inmemory) {
                if (cmdLineArgs.jdbcConfFile != null) {
                    LOG.warn("JDBC conf file is ignored when in-memory flag is set");
                }
                if (cmdLineArgs.schemaInit) {
                    LOG.warn("Schema initialization is ignored when in-memory flag is set");
                }
                storeClient = new InMemoryStoreClient();
                if (cmdLineArgs.dumpInName != null) {
                    InMemoryStoreClient inMemoryStoreClient = (InMemoryStoreClient)storeClient;
                    File file = new File(cmdLineArgs.dumpInName);
                    int keys = inMemoryStoreClient.load(new FileReader(file));
                    System.out.println("Values loaded from " + file.getAbsolutePath()+" ("+ keys + ")");
                }
                if (cmdLineArgs.dumpOutName != null) {
                    Runtime.getRuntime().addShutdownHook(
                            new DumpOutThread((InMemoryStoreClient)storeClient, cmdLineArgs.dumpOutName));

                }
            } else {
                storeClient = new IgniteStoreClient(cmdLineArgs.jdbcConfFile);
                if (cmdLineArgs.schemaInit) {
                    DataSource dataSource =
                            Ignition.loadSpringBean(
                                    Main.class.getResource("ignite.xml"), "dataSource");
                    ensureSchemaInitialization(dataSource);
                }
            }
            int i = 0;
            while (i < cmdLineArgs.setValues.size()) {
                storeClient.put(cmdLineArgs.setValues.get(i), cmdLineArgs.setValues.get(i + 1));
                i += 2;
            }

            RestModelServer modelServer = new RestModelServer(storeClient);

            File sharedSecretFile = cmdLineArgs.secretFile;
            if (sharedSecretFile.exists()) {
                modelServer.setSharedSecret(
                        FileUtils.readFileToString(sharedSecretFile, StandardCharsets.UTF_8));
            }

            final Server server = new Server(bindTo);
            ServletContextHandler servletHandler = new ServletContextHandler();
            modelServer.init(servletHandler);
            HandlerList handlerList = new HandlerList();
            handlerList.addHandler(servletHandler);
            server.setHandler(handlerList);
            server.start();
            LOG.info("Server started");

            Runtime.getRuntime()
                    .addShutdownHook(
                            new Thread(
                                    () -> {
                                        try {
                                            server.stop();
                                        } catch (Exception ex) {
                                            System.err.println("Exception: " + ex.getMessage());
                                            ex.printStackTrace();
                                        }
                                    }));
        } catch (Exception ex) {
            System.out.println("Server failed: " + ex.getMessage());
            ex.printStackTrace();
        }
    }
}
