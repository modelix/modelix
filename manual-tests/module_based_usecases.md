# Module Based Use Cases

These tests are used to verify that these five use cases work as expected:

1. I have a physical module, I just save it on the server
2. I have a physical module, I save it on the server and sync it
3. I have a module on the cloud, I use it as a transient module
4. I have a module on the cloud, I check it out as a physical module
5. I have a module on the cloud, I check it out as a physical module and sync it

## Common preparation

* Ensure there are not unsaved changes in the projects used for manual testing
* Start a model-server using in-memory storage
* Ensure we get the right Modelix for the manual tests by running `./gradlew prepareDependenciesForManualTests`

## At the end

* Do not save any change to the projects

## Manual Test MBUC-1

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open a project using as libraries the version of Modelix under test. 

## Manual Test MBUC-2

## Manual Test MBUC-3

## Manual Test MBUC-4

## Manual Test MBUC-5
