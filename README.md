# Regarding MPS based components

⚠ IMPORTANT 

All MPS based components were moved from this repository over to a [new repository called modelix/modelix.mps](https://github.com/modelix/modelix.mps/).
The publishing workflow of this repository has been disabled for this repository and remaining components will either follow a new versioning and publishing schema and/or move to their own respective repositories.

[![Build Status](https://github.com/modelix/modelix/actions/workflows/overallbuild.yml/badge.svg)](https://github.com/modelix/modelix/actions/workflows/overallbuild.yml)

# The Modelix Project

The Modelix project develops a next generation language workbench that is native to the web and the cloud, inspired by [this document](http://voelter.de/data/pub/APlatformForSystemsAndBusinessModeling.pdf). On the path to this final vision, the short-term goal is to use MPS as the backend. To this end, we currently develop two components:

* Database/Cloud storage for MPS models with realtime collaboration
* Server-based execution of MPS and browser-based editors



# How to run Modelix

You need to install a Kubernetes cluster.
For development or evaluation [Docker Desktop](https://www.docker.com/products/docker-desktop/) might be the easiest option.

## Docker Desktop
Make sure to enable Kubernetes in the preferences.
Under _Resources_ change the memory limit to 8 GB or more.

If you use Docker Desktop >= 4.2.0 you have to add the option `"deprecatedCgroupv1": true`
to the file `~/Library/Group Containers/group.com.docker/settings.json`.
Otherwise, MPS (the JBR) will not use the correct memory limit.

## Deploy with Helm

- [Install helm](https://helm.sh/docs/intro/install/)
- run `helm install --repo https://artifacts.itemis.cloud/repository/helm-modelix/ dev modelix`
- Helm allows you to deploy multiple instances of modelix to the same cluster.
  You could have one instance for testing and one production instance.
  Just specify a different instance name and hostname when running helm:
  - `helm install --repo https://artifacts.itemis.cloud/repository/helm-modelix/ xyz modelix --set ingress.hostname=xyz.127.0.0.1.nip.io`
    - "xyz" is the name of your modelix instance.
    - "xyz.127.0.0.1.nip.io" is the hostname used to access the modelix instance.
      In a development environment you can use nip.io to get different hostnames that resolve to 127.0.0.1.

## Additional Configuration

### Admin password

After Modelix is deployed make sure to change the password of the admin account.
- Open http://localhost/admin/master/console/#/realms/master/users
- The default password for the user **admin** is **modelix**.
- Navigate to Edit > Credentials > Reset Password
- Enter a new password and disable *Temporary*

### Node Pools

If you are using a cloud provider that supports auto-scaling create a separate node pool for the MPS instances.
Add a taint "**workspace-client**" with the value "**true**" and the type "**NoExecute**".
This taint ensures that the pool can be scaled down after Modelix stopped the MPS instances
and the nodes don't keep running because some other small pod was scheduled to them.

An MPS instances with a lot of languages and plugins can require ~8 GB of memory.
16 GB of memory for a node is a reasonable size.

# Editing the sources

- run `gradlew` in the main directory to download dependencies and build the project
- While the MPS that is used for the build is downloaded automatically, you have to install MPS yourself to use it as the client.
- open the project in the folder "mps" with MPS

# Content of the root directory

| File                                                           | Description                                                                                                                                                                                                                                                                                                  |
|----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [db](db)                                                       | Files for building the PostgreSQL docker image                                                                                                                                                                                                                                                               |
| [doc](doc)                                                     | Documentation                                                                                                                                                                                                                                                                                                |
| [gradle-plugin](gradle-plugin)                                 | gradle plugin for downloading a model from the model server to an MPS model file                                                                                                                                                                                                                             |
| [gradle-plugin-test](gradle-plugin-test)                       | Demo project that uses the gradle plugin.                                                                                                                                                                                                                                                                    |
| [kubernetes](kubernetes)                                       | YAML configuration files for running Modelix in a kubernetes cluster                                                                                                                                                                                                                                         |
| [model-client](model-client)                                   | Model implementation with real-time collaboration support implemented in kotlin                                                                                                                                                                                                                              |
| [model-server](model-server)                                   | Java project that implements a REST API on top of an [Apache Ignite](https://ignite.apache.org/) key value store. It is very generic and lightweight and doesn't know anything about models and their storage format. The mapping between the model data structure and the key value entries happens in MPS. |
| [mps](mps)                                                     | MPS project that implements all the MPS plugins. That's a plugin for synchronizing models with the model server and plugins for editing models in the browser.                                                                                                                                               |
| [proxy](proxy)                                                 | Files for building a docker image for a reverse proxy used inside the kubernetes cluster.                                                                                                                                                                                                                    |
| [samples](samples)                                             | Projects that show you how to build your own kubernetes cluster running MPS with custom languages.                                                                                                                                                                                                           |
| [ssl](ssl)                                                     | SSL support inside the kubernetes cluster                                                                                                                                                                                                                                                                    |
| [ui-client](ui-client)                                         | A typescript project that implements the browser part of the editor. This is generic and doesn't contain anything language specific. All language specific parts are implements on the server side in MPS.                                                                                                   |
| [ui-server](ui-server)                                         | A small Java project that configures and starts MPS in headless mode.                                                                                                                                                                                                                                        |
| [.dockerignore](.dockerignore)                                 |                                                                                                                                                                                                                                                                                                              |
| [.gitignore](.gitignore)                                       |                                                                                                                                                                                                                                                                                                              |
| [.nvmrc](.nvmrc)                                               | Currently used NVM version                                                                                                                                                                                                                                                                                   |
| [.travis.yml](.travis.yml)                                     | Required for using travis as the CI server: <https://travis-ci.org/github/modelix/modelix>                                                                                                                                                                                                                   |
| [Dockerfile-mps](Dockerfile-mps)                               | The docker image for the UI server is split into a separate layer for MPS, because the MPS version changes less frequently and this speeds up the rebuild of the docker image.                                                                                                                               |
| [Dockerfile-ui](Dockerfile-ui)                                 | For building the docker image of the UI server.                                                                                                                                                                                                                                                              |
| [LICENSE](LICENSE)                                             |                                                                                                                                                                                                                                                                                                              |
| [README.md](README.md)                                         |                                                                                                                                                                                                                                                                                                              |
| [build-scripts.xml](build-scripts.xml)                         | Generated by MPS for building the MPS project                                                                                                                                                                                                                                                                |
| [build.gradle](build.gradle)                                   |                                                                                                                                                                                                                                                                                                              |
| [docker-build-all.sh](docker-build-all.sh)                     | Builds all the docker images. You have to run `./gradlew` first.                                                                                                                                                                                                                                             |
| [docker-build-db.sh](docker-build-db.sh)                       |                                                                                                                                                                                                                                                                                                              |
| [docker-build-model.sh](docker-build-model.sh)                 |                                                                                                                                                                                                                                                                                                              |
| [docker-build-mps.sh](docker-build-mps.sh)                     |                                                                                                                                                                                                                                                                                                              |
| [docker-build-proxy.sh](docker-build-proxy.sh)                 |                                                                                                                                                                                                                                                                                                              |
| [docker-build-ui.sh](docker-build-ui.sh)                       |                                                                                                                                                                                                                                                                                                              |
| [docker-build-uiproxy.sh](docker-build-uiproxy.sh)             |                                                                                                                                                                                                                                                                                                              |
| [docker-ci.sh](docker-ci.sh)                                   | Is executed by the CI server to publish the docker images for a git tag                                                                                                                                                                                                                                      |
| [docker-run-db.sh](docker-run-db.sh)                           | If you want to run the PostgresSQL database locally without a kubernetes cluster                                                                                                                                                                                                                             |
| [generate-modelsecret.sh](generate-modelsecret.sh)             | Access to the model server requires clients to be logged in with their google account. Inside the kubernetes cluster the other components use a secret stored in the kubernetes cluster as the access token.                                                                                                 |
| [gradlew](gradlew)                                             | Run this to build all projects.                                                                                                                                                                                                                                                                              |
| [gradlew.bat](gradlew.bat)                                     | Run this to build all projects.                                                                                                                                                                                                                                                                              |
| [kubernetes-apply-gcloud.sh](kubernetes-apply-gcloud.sh)       |                                                                                                                                                                                                                                                                                                              |
| [kubernetes-apply-local.sh](kubernetes-apply-local.sh)         |                                                                                                                                                                                                                                                                                                              |
| [kubernetes-gcloud-dbsecret.sh](kubernetes-gcloud-dbsecret.sh) |                                                                                                                                                                                                                                                                                                              |
| [kubernetes-secrets.sh](kubernetes-secrets.sh)                 |                                                                                                                                                                                                                                                                                                              |
| [kubernetes-open-proxy.sh](kubernetes-open-proxy.sh)           | Opens Modelix in the browser after loading the kubernetes configuration in docker desktop                                                                                                                                                                                                                    |
| [kubernetes-use-latest-tag.sh](kubernetes-use-latest-tag.sh)   | Use this before [kubernetes-apply-local.sh](kubernetes-apply-local.sh) to update the kubernetes configurations to use the latest Modelix version                                                                                                                                                             |
| [modelix-version.sh](modelix-version.sh)                       | Reads or creates a modelix.version file that is used to tag the docker images                                                                                                                                                                                                                                |
| [mps-version.properties](mps-version.properties)               | The MPS version that Modelix is based on                                                                                                                                                                                                                                                                     |
| [run-ui-server.sh](run-ui-server.sh)                           | This is packaged into the docker image and doesn't work outside of it.                                                                                                                                                                                                                                       |
| [settings.gradle](settings.gradle)                             |                                                                                                                                                                                                                                                                                                              |
| [update-gcloud.sh](update-gcloud.sh)                           | If you want to build and run your own images inside you cluster.                                                                                                                                                                                                                                             |
| [update-minikube.sh](update-minikube.sh)                       | If you want to build and run your own images inside you cluster.                                                                                                                                                                                                                                             |

# Publishing a new version

To make a new release you will simply need to push a new tag.
Everything is automated: it means that no version number have to be changed manually.
Code in master can be released under tags indicating the version numbers, without qualifiers.
For example, if the last tag from master branch has been "0.0.1", the next tag should be "0.0.2".

See https://semver.org/ for valid version numbers. Helm will fail if the version is not in this format.

The artifacts are published to
- Maven: https://artifacts.itemis.cloud/repository/maven-mps/
- Helm: https://artifacts.itemis.cloud/repository/helm-modelix/
- Docker: https://hub.docker.com/u/modelix

# Overview of published docker images

This is an overview of the docker images you can find at https://hub.docker.com/?namespace=modelix

| Tag                                | Dockerfile                                                                                                        | Shell Script                                                                                                  | Depends On                                               | Description                                                                                                                          |
|------------------------------------|-------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| modelix/db                         | [db/Dockerfile]()                                                                                                 | [docker-build-db.sh]()                                                                                        | postgres:9.6                                             | Postgres database with the schema required by the model server                                                                       |
| modelix/modelix-model              | [modelix.core:model-server/Dockerfile](https://github.com/modelix/modelix.core/blob/main/model-server/Dockerfile) | [modelix.core:docker-build-model.sh](https://github.com/modelix/modelix.core/blob/main/docker-build-model.sh) | registry.access.redhat.com/ubi8/openjdk-11               | Modelix model server                                                                                                                 |
| modelix/keycloak                   | [keycloak-extensions/Dockerfile]()                                                                                | [docker-build-keycloak.sh]()                                                                                  | quay.io/keycloak/keycloak                                | Keycloak with custom plugins                                                                                                         |
| ~~modelix/modelix-mps~~            | [Dockerfile-mps]()                                                                                                | [docker-build-mps.sh]()                                                                                       | debian:buster                                            | (deprecated) MPS without Projector                                                                                                   |
| ~~modelix/modelix-base~~           | [Dockerfile-base]()                                                                                               | [docker-build-base.sh]()                                                                                      | modelix/modelix-mps                                      | (deprecated) Adds Modelix MPS plugins                                                                                                |
| modelix/projector-mps              |                                                                                                                   | [docker-build-projector-mps.sh]()                                                                             |                                                          | Runs MPS with Projector without any further plugins                                                                                  |
| ~~modelix/modelix-projector-base~~ | [Dockerfile-projector-base]()                                                                                     | [docker-build-projector-base.sh]()                                                                            | modelix/projector-mps                                    | (deprecated) Modifies the image to directly open an MPS project without having to confirm anything                                   |
| modelix/modelix-projector          | [Dockerfile-projector]()                                                                                          | [docker-build-projector.sh]()                                                                                 | ~~modelix/modelix-projector-base~~ modelix/projector-mps | Adds Modelix plugins                                                                                                                 |
| modelix/modelix-proxy              | [Dockerfile-proxy]()                                                                                              | [docker-build-proxy.sh]()                                                                                     | nginx                                                    | Reverse proxy to forward HTTP request to the different services inside kubernetes                                                    |
| modelix/modelix-workspace-client   | [Dockerfile-workspace-client]()                                                                                   | [docker-build-workspace-client.sh]()                                                                          | modelix/modelix-projector                                | Downloads an MPS project defined in a workspace before starting MPS in Projector mode                                                |
| modelix/workspace-job              | [Dockerfile-workspace-job]()                                                                                      | [docker-build-workspace-job.sh]()                                                                             | openjdk:11                                               | Builds an MPS project defined in a workspace before it is loaded by a workspace-client instance                                      |
| modelix/modelix-workspace-manager  | [Dockerfile-workspace-manager]()                                                                                  | [docker-build-workspace-manager.sh]()                                                                         | openjdk:11                                               | Allows to define workspace and starts "workspace-jobs" to build a workspace.zip file that is then downloaded by a "workspace-client" |
| modelix/modelix-instances-manager  | [instances-manager/Dockerfile]()                                                                                  | [docker-build-instances-manager.sh]()                                                                         | openjdk:11                                               | Reverse proxy that creates "workspace-client" instances on demand                                                                    |
