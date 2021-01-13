# Module Based Use Cases

These tests are used to verify that these five use cases work as expected:

1. I have a physical module, I just save it on the server
2. I have a physical module, I save it on the server and sync it
3. I have a module on the cloud, I use it as a transient module
4. I have a module on the cloud, I check it out as a physical module
5. I have a module on the cloud, I check it out as a physical module and sync it

## Common preparation

* Ensure the dependencies are up-to-date by running `./gradlew prepareDependenciesForManualTests`

* Ensure there are not unsaved changes in the projects used for manual testing

* Start a model-server using in-memory storage. From the root of the project run:

```
java -jar model-server/build/libs/model-server-fatJar-latest.jar -inmemory -port 8899
```

* Now you can open MPS. Ensure you do not have other instances of MPS running

## At the end

* Do not save any change to the projects

## Manual Test MBUC-1

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project MBUC-1.

Add the Cloud Repository http://localhost:8899/

Select the only solution, open the contextual menu, select Cloud Actions and "Copy on Cloud -> http://localhost:8899" (NOT "Copy on Cloud and Sync -> http://localhost:8899").

* You should look into the cloud server and see the modules.
* You should see the model saved on the cloud
* You should see the two languages indicated as dependencies (two usedLanguages children)
* You should see the two roots available on the server (MyClass and MyAbstractClass)

You can close the project.

Remove "MBUC-1/.mps/cloudResources.xml"

## Manual Test MBUC-2

## Manual Test MBUC-3

## Manual Test MBUC-4

## Manual Test MBUC-5
