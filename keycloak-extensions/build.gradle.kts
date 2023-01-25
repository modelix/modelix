
plugins {
    id("java")
}

dependencies {
    implementation("org.keycloak:keycloak-core:19.0.1")
    implementation("org.keycloak:keycloak-server-spi:19.0.1")
    implementation("org.keycloak:keycloak-server-spi-private:19.0.1")
}

tasks.withType<Jar> {
    archiveFileName.set("keycloak-extensions.jar")
}
