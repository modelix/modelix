# Project Based Use Cases

These tests are used to verify that these five use cases work as expected:

[Not yet supported 1. I have a physical project, I just save it on the server]

2. I have a physical project, I save it on the server and sync it
3. I have a project on the cloud, I check it out as a physical project
4. I have a project on the cloud, I check it out as a physical project and sync it

## Common preparation

* Ensure the dependencies are up-to-date by running `./gradlew prepareDependenciesForManualTests`

* Ensure there are not unsaved changes in the projects used for manual testing

* Start a model-server using in-memory storage. From the root of the project run:

```
java -jar model-server/build/libs/model-server-latest-all.jar -inmemory -port 8899
```

If the instructions specify to load a dump use this command:

```
java -jar model-server/build/libs/model-server-latest-all.jar -inmemory -dumpin <DUMP NAME> -port 8899
```


* Now you can open MPS. Ensure you do not have other instances of MPS running

## At the end

* Do not save any change to the projects

## Manual Test PBUC-1

**NOT YET SUPPORTED**

### Preparation

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project PBUC-1.

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository is empty.

Select the project in the Logical View, open the contextual menu, select Cloud Actions and "Copy on Cloud -> http://localhost:8899/default tree" (NOT "Copy on Cloud Sync -> http://localhost:8899/default tree").

* You should look into the cloud server and see the project
* The project should contain two modules
* The modules should contain their models (1 each)
* The model should contain their roots (1 for ASecondSolution.model2A and 2 for MyExampleSolution.aModel)

### Clean up

You can close the project.

Remove "PBUC-1/.mps/cloudResources.xml".

Kill the model-server

## Manual Test PBUC-2

### Preparation

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project PBUC-1.

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository is empty.

Select the project in the Logical View, open the contextual menu, select Cloud Actions and "Copy on Cloud and Sync -> http://localhost:8899/default tree" (NOT "Copy -> http://localhost:8899/default tree").

* You should look into the cloud server and see the project
* The project should contain two modules
* The modules should contain their models (1 each)
* The model should contain their roots (1 for ASecondSolution.model2A and 2 for MyExampleSolution.aModel)

Create a new solution in the Project and call it "MyCreatedSolution". You should see a new module appearing also in the Cloud Repository.

TODO verify that adding a module it is added
TODO verify that removing a module it is removed

### Clean up

You can close the project.

Remove "PBUC-2/.mps/cloudResources.xml".

Kill the model-server

## Manual Test PBUC-3

**NOT YET SUPPORTED**

## Manual Test PBUC-4

### Preparation

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project PBUC-2. I should see an existing solution.

I start the modelix server with dump model-server-dump-MBUC-1 by running this command from the root of the project:

```
java -jar model-server/build/libs/model-server-latest-all.jar -inmemory -dumpin manual-tests/dump_with_a_project1 -port 8899
```

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository contains one project with one module.

Select the project in the Cloud View, open the contextual menu, select "Bind to Current Project".

At this point on the Physical Project you should see the two solutions, each one with one model, each with their root nodes.

At this point on the Cloud Project you should see the two solutions, each one with one model, each with their root nodes.

Add now a Class in each model on the MPS Project. Verify they are added in the Cloud View.

Remove the added classes from the Cloud View. Verify they are removed also on the physical project.

### Clean up

You can close the project.

Remove "PBUC-1/.mps/cloudResources.xml".

Kill the model-server

