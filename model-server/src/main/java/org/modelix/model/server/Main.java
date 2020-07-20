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
import java.io.File;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ContextHandler;
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
}

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) {
        CmdLineArgs cmdLineArgs = new CmdLineArgs();
        new JCommander(cmdLineArgs).parse(args);

        LOG.info("Max memory (bytes): " + Runtime.getRuntime().maxMemory());
        LOG.info("Server process started");
        LOG.info("Path to secret file: " + cmdLineArgs.secretFile);
        LOG.info("Path to JDBC configuration file: " + cmdLineArgs.jdbcConfFile);

        try {
            String portStr = System.getenv("PORT");
            InetSocketAddress bindTo =
                    new InetSocketAddress(
                            InetAddress.getByName("0.0.0.0"),
                            portStr == null ? 28101 : Integer.parseInt(portStr));
            IgniteStoreClient storeClient = new IgniteStoreClient(cmdLineArgs.jdbcConfFile);
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
                            new Thread() {
                                @Override
                                public void run() {
                                    try {
                                        server.stop();
                                    } catch (Exception ex) {
                                        System.out.println(ex.getMessage());
                                        ex.printStackTrace();
                                    }
                                }
                            });
        } catch (Exception ex) {
            System.out.println("Server failed: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    private static Handler withContext(String path, Handler handler) {
        ContextHandler contextHandler = new ContextHandler();
        contextHandler.setContextPath(path);
        contextHandler.setHandler(handler);
        return contextHandler;
    }
}
