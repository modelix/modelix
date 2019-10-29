package de.q60.mps.web.ui.server;

import org.apache.log4j.Logger;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) {
        LOG.error("Test error");
        LOG.warn("Test warning");
        LOG.info("Test info");
        LOG.debug("Test debug");
        LOG.trace("Test trace");
        EnvironmentLoader.loadEnvironment();
        LOG.debug("idea.load.plugins.id: " + System.getProperty("idea.load.plugins.id"));
    }
}

