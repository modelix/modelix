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

If the instructions specify to load a dump use this command:

```
java -jar model-server/build/libs/model-server-fatJar-latest.jar -inmemory -dumpin <DUMP NAME> -port 8899
```


* Now you can open MPS. Ensure you do not have other instances of MPS running

## At the end

* Do not save any change to the projects

## Manual Test MBUC-1

### Preparation

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project MBUC-1.

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository is empty.

Select the only solution, open the contextual menu, select Cloud Actions and "Copy on Cloud -> http://localhost:8899/default tree" (NOT "Copy on Cloud Sync -> http://localhost:8899/default tree").

* You should look into the cloud server and see the modules.
* You should see the model saved on the cloud
* You should see the two languages indicated as dependencies (two usedLanguages children)
* You should see the two roots available on the server (MyClass and MyAbstractClass)

### Clean up

You can close the project.

Remove "MBUC-1/.mps/cloudResources.xml".

Kill the model-server

## Manual Test MBUC-2

### Preparation

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project MBUC-1.

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository is empty.

Select the only solution, open the contextual menu, select Cloud Actions and "Copy on Cloud Sync-> http://localhost:8899/default tree" (NOT "Copy on Cloud -> http://localhost:8899/default tree").

* You should look into the cloud server and see the modules.
* You should see the model saved on the cloud
* You should see the two languages indicated as dependencies (two usedLanguages children)
* You should see the two roots available on the server (MyClass and MyAbstractClass)

In MPS, rename the class "MyClass" to "MyClassFoo" by typing the name in the editor. Verify the change is reflected on the server.

In the Cloud server, rename the class "MyClassFoo" to "MyClassBar", by using "Set Property Name" on the corresponding cloud node. Verify the change is reflected on MPS.

In MPS, add the field "private string s3;" to the class "MyClass". Verify the change is reflected on the server.

In MPS, remove the field s3. Verify the change is reflected on the server.

In the Cloud server, add a field of type "StaticFieldDeclaration" named "S4". Verify to see in MPS a field "*package* static <no type> S4;"

In MPS, type "string" where <no type> is shown for field "S4". Verify the change is reflected on the server.

In MPS, modify the line "string saved = s1;" into "string saved = S4;". Verify the change is reflected on the server.

We have currently no way to change the reference on the Cloud. If in the future it is possible, we should do so.	

### Clean up

You can close the project.

Run "git checkout manual-tests"

Kill the model-server

## Manual Test MBUC-3

### Preparation

Start the model-server using dump `model-server-dump-MBUC-1`. Note that if in the future you need to recreate this dump you can execute Manual Test MBUC-1 starting the model server with the dump out option.

Take a clean installation of MPS, of the exact same version as specified in build.gradle. You should not install any plugin on that.

In that version open the project MBUC-3.

### Test execution

Add the Cloud Repository http://localhost:8899/

Verify the Cloud Repository contains one module with one model, with two roots.

Select the solution "MyExampleSolution" in the Cloud Repository and from the contextual menu triggers "Bind to Transient Module".

You should see now a transient module named "MyExampleSolution" with a model inside it called "MyExampleSolution.aModel". It should contain two classes.

Open the two classes and verify they do not contain errors.	

### Clean up

You can close the project.

Run "git checkout manual-tests"

Kill the model-server

## Manual Test MBUC-4

## Manual Test MBUC-5
