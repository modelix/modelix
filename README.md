[![Build Status](https://github.com/modelix/modelix/actions/workflows/overallbuild.yml/badge.svg)](https://github.com/modelix/modelix/actions/workflows/overallbuild.yml)

# The Modelix Project

The Modelix project develops a next generation language workbench that is native to the web and the cloud, inspired by [this document](http://voelter.de/data/pub/APlatformForSystemsAndBusinessModeling.pdf). On the path to this final vision, the short-term goal is to use MPS as the backend. To this end, we currently develop two components:

* Database/Cloud storage for MPS models with realtime collaboration
* Server-based execution of MPS and browser-based editors


# Access to Github Packages

Modelix itself and some of its dependencies are published to Github Packages Repositories.
To access these repositories from gradle you have to add your GitHub credentials to `~/.gradle/gradle.properties`:

```
gpr.user=YOUR_USER_NAME
gpr.key=TOKEN_WITH_PACKAGES_READ_ACCESS
```

`gpr.key` is an access token that you can generate at https://github.com/settings/tokens.
This token needs the `read:packages` permission.

# How to run Modelix

- At this time there are no builds or releases available. You have to clone the repo to use Modelix.
- You can run Modelix locally and in the Google cloud. The details are described in [Running Modelix](doc/running-modelix.md).
- Then check out some of the [samples](doc/samples.md).
- Or check out the [tutorials](doc/tutorials.md).

# Editing the sources

- run `gradlew` in the main directory to download dependencies and build the project
- While the MPS that is used for the build is downloaded automatically, you have to install MPS yourself to use it as the client. Currently we rely on MPS 2020.1 which you can get from https://www.jetbrains.com/mps/
- open the project in the folder "mps" with MPS

# Architecture

![Architecture Overview](doc/images/overview.svg "Architecture Overview")

The image above shows the components that Modelix currently consists of.

MPS is running in headless mode on the server with an HTTP server installed as a plugin.
The browser connects to that server and receives the HTML and JavaScript code required for the interactive model editor.

A second plugin connects to a model server and replicates the data into MPS' internal module repository.
All MPS instances connected to that model server will stay synchronized.
This can also be a local MPS instance without a web editor.
Both options are supported at the same time.

The next image gives an overview over the different docker images running in the kubernetes cluster. 

![Kubernetes](doc/images/kubernetes.svg "Kubernetes")

The model server uses an Apache Ignite cluster and just provides a REST API on top of it.
A high load can be distributed over multiple instances.

Running multiple MPS instances for scalability is possible,
because the model has the same state on all instances.

If you want to run MPS instances with different configurations (languages, plugins)
or allow external instances to connect to the model server,
a reverse proxy is used to forward the request to the correct instance.

To access the web editor a user has to login in with a google account first.
An OAuth proxy takes care of that and adds an HTTP header with the users e-mail address to the request. 

## Editor
Modelix provides an editor in the browser for the languages implemented in MPS.
This can be an image based editor that renders the editor in MPS using the default editor definition
or an HTML based editor that requires a separate editor definition in a language provided by Modelix.

Common to both approaches is that the user input (keyboard, mouse) is processed on the server
and the update of the projection after a model change also happens on the server.
Even in case of the HTML based editor the resulting HTML is computed on the server side.
This removes the need to replicate the model into the browser, which would result in a bad performance in case of big models.

## Model

Running MPS in the cloud requires an alternative to the file system for storing models.
Modelix implements a data structure that allows replication between all MPS instances connected to the same model server.
It is very similar to the [git storage format](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects),
but instead of files it stores nodes in its key-value data store.

To support realtime collaboration, in addition to the snapshot of a version it also stores the operations that were applied on the previous version to produce the new version.
Conflicts between concurrent modification are resolved using [operational transformation](https://en.wikipedia.org/wiki/Operational_transformation) (OT).
The usually hard part of OT is to guarantee convergence, meaning that all clients end up with the same result indepent of the order in which they receive changes.
This problem becomes trivial, because versions are identified by a hash over all the content.
Any divergence will result in a different hash which can easily be detected.

The remaining problem is what to do when a divergence is detected.
From git we know that switching between versions is fast, because it only has to apply the difference between these versions.
The same is true here.
Fixing a divergence is as easy as switching to the correct version.
If a client doesn't have any local changes it doesn't even need to apply the change operations itself.
It can just switch to the new version.
So in the rare case of a divergence fixing it is nothing special.
It's an operation that happens all the time.

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
| [ui-proxy](ui-proxy)                                           | Starts MPS instaces on demand with cloned github repositories. Also supports showing diffs for pull requests.                                                                                                                                                                                                |
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

# Roadmap

Here are some open topics that we may work on in the future. The order doesn't have any meaning.

- CI integration
  - Gradle plugin for downloading models from the model server
- Code review tool based on Modelix
  - Git integration: Allow to specify a repository and a branch/version that is then loaded into an MPS instance running in kubernetes
- Collaborative editing in MPS
  - Show list of active users working on the same model
  - Show cursors/selection of other users
- Editor
  - Graphical notation: The current text based notation only uses very little code in the browser. All user input is processed on the server and they client receives an update of the changed HTML elements. A graphical notation based on existing JavaScript libraries would require a different API provided by the server.

# Testing

Testing that all the features of Modelix works is not an easy task, because it is such a large projects with different moving parts.

We have different kinds of tests:

* Unit Tests, as typical. In general we have very few of those and we should increase them
* Integration Tests, which runs as part of the CI. They verify the different parts of the systems work together
* Manual Tests, to be performed after major changes. They are necessary to catch errors we are unable to catch with automated tests. They are described in the directory _manual_tests_

# Using Maven Packages

Maven packages are published to GitHub Packages.
To use them in your gradle script add this repository:

```
    maven {
        url = uri("https://maven.pkg.github.com/modelix/modelix")
        if (project.hasProperty("gpr.user") && project.hasProperty("gpr.key")) {
            credentials {
                username = project.findProperty("gpr.user").toString()
                password = project.findProperty("gpr.key").toString()
            }
        } else {
            logger.error("Please specify your github username (gpr.user) and access token (gpr.key) in ~/.gradle/gradle.properties")
        }
    }
```

To make a new release you will simply need to push a new tag. Everything is automated: it means that no version number have to be changed manually.
Code in master can be released under tags indicating the version numbers, without qualifiers. 
For example, if the last tag from master branch has been "0.0.1", the next tag should be "0.0.2".
