package de.q60.mps.web.ui.server;

public class Main {
    public static void main(String[] args) {
        EnvironmentLoader.loadEnvironment();
        System.out.println("idea.load.plugins.id: " + System.getProperty("idea.load.plugins.id"));
    }
}

