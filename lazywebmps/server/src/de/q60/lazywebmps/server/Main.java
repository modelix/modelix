package de.q60.lazywebmps.server;

import jetbrains.mps.project.Project;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;

public class Main {

    public static void main(String[] args) {
        //System.out.println("home: " + PathManager.getHomePath());
        Project project = EnvironmentLoader.loadEnvironment();
        SRepository repository = project.getRepository();
        repository.getModelAccess().runReadAction(() -> {
            for (SModule module : repository.getModules()) {
                System.out.println("module: " + module.getModuleName());
            }
        });
    }
}
