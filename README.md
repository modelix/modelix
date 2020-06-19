[![Build Status](https://travis-ci.org/modelix/modelix.svg?branch=master)](https://travis-ci.org/modelix/modelix) 

# The modelix Project

The modelix project develops a next generation language workbench that is native to the web and the cloud, inspired by [this document](http://voelter.de/data/pub/APlatformForSystemsAndBusinessModeling.pdf). On the path to this final vision, the short-term goal is to use MPS as the backend. To this end, we currently develop two components:

* Database/Cloud storage for MPS models with realtime collaboration
* Server-based execution of MPS and browser-based editors

# Roadmap

TBD.


# Clone the repo

At this time there are no builds or releases available. You have to clone the repo to use modelix.

# How to run modelix

You can run modelix locally and in the Google cloud. The details are described [on this wiki page](https://github.com/modelix/modelix/wiki/Running-Modelix).

# Editing the sources

- run `gradlew` in the main directory to download dependencies and build the project
- While the MPS that is used for the build is downloaded automatically, you have to install MPS yourself to use it as the client. Currently we rely on MPS 2020.1 which you can get from https://www.jetbrains.com/mps/
- open the project in the folder "mps" with MPS; you might want to rebuild it in the IDE




