rootProject.name = "modelix"

pluginManagement {
    val kotlinVersion: String by settings
    plugins {
        kotlin("jvm") version kotlinVersion
        kotlin("multiplatform") version kotlinVersion
        kotlin("plugin.serialization") version kotlinVersion
    }
}

include("ui-client")
include("mps")
include("ui-server")
include("instances-manager")
include("keycloak-extensions")
include("model-download-gradle")
include("manual-tests")
include("graphql-server")
include("workspaces")
include("workspace-manager")
include("workspace-client")
include("headless-runner")
include("gitui")
