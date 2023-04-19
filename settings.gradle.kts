rootProject.name = "modelix"

pluginManagement {
    val kotlinVersion: String by settings
    plugins {
        kotlin("jvm") version kotlinVersion
        kotlin("multiplatform") version kotlinVersion
        kotlin("plugin.serialization") version kotlinVersion
    }

    val kotlinLoggingVersion: String by settings
    val logbackVersion: String by settings
    val ktorVersion: String by settings
    dependencyResolutionManagement {
        versionCatalogs {
            create("libs") {
                val version_ktor = version("ktor", ktorVersion)
                library("kotlin.logging", "io.github.microutils:kotlin-logging:$kotlinLoggingVersion")
                library("logback", "ch.qos.logback", "logback-classic").version(logbackVersion)

                library("kotlin.ktor.json", "io.ktor", "ktor-serialization-kotlinx-json").versionRef(version_ktor)

                library("kotlin.ktor.server.core", "io.ktor", "ktor-server-core").versionRef(version_ktor)
                library("kotlin.ktor.server.contentnegotiation", "io.ktor", "ktor-server-content-negotiation").versionRef(version_ktor)
                library("kotlin.ktor.server.cors", "io.ktor", "ktor-server-cors").versionRef(version_ktor)
                library("kotlin.ktor.server.html", "io.ktor", "ktor-server-html-builder").versionRef(version_ktor)
                library("kotlin.ktor.server.auth", "io.ktor", "ktor-server-auth").versionRef(version_ktor)
                library("kotlin.ktor.server.statuspages", "io.ktor", "ktor-server-status-pages").versionRef(version_ktor)
                library("kotlin.ktor.server.netty", "io.ktor", "ktor-server-netty").versionRef(version_ktor)
                bundle("kotlin.ktor.server", listOf(
                    "kotlin.ktor.server.core",
                    "kotlin.ktor.server.contentnegotiation",
                    "kotlin.ktor.json",
                    "kotlin.ktor.server.cors",
                    "kotlin.ktor.server.html",
                    "kotlin.ktor.server.auth",
                    "kotlin.ktor.server.statuspages",
                    "kotlin.ktor.server.netty"
                ))

                library("kotlin.ktor.client.core", "io.ktor", "ktor-client-core").versionRef(version_ktor)
                library("kotlin.ktor.client.cio", "io.ktor", "ktor-client-cio").versionRef(version_ktor)
                library("kotlin.ktor.client.auth", "io.ktor", "ktor-client-auth").versionRef(version_ktor)
                library("kotlin.ktor.client.contentnegotiation", "io.ktor", "ktor-client-content-negotiation").versionRef(version_ktor)
                bundle("kotlin.ktor.client", listOf(
                    "kotlin.ktor.client.core",
                    "kotlin.ktor.client.cio",
                    "kotlin.ktor.client.auth",
                    "kotlin.ktor.client.contentnegotiation"
                ))
            }
        }
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
include("workspace-job")
include("headless-runner")
include("gitui")
