In production Modelix uses docker images running in a kubernetes cluster.
During development you can run the different components without docker/kubernetes.
You need a PostgreSQL database, the model server and the MPS plugin for the UI server.

## Docker Desktop
If you use Docker Desktop >= 4.2.0 you have to add the option `"deprecatedCgroupv1": true`
to the file `~/Library/Group Containers/group.com.docker/settings.json`.
Otherwise, MPS (the JBR) will not use the correct memory limit.

## Install using Helm

- Add the chart repository to helm
  - `helm repo add modelix https://artifacts.itemis.cloud/repository/helm-modelix/`
- run `helm install --repo https://artifacts.itemis.cloud/repository/helm-modelix/ xyz modelix --set ingress.hostname=xyz.127.0.0.1.nip.io`
  - "xyz" is the name of your modelix instance.
    You can install modelix multiple times by running this command with different names.
  - "xyz.127.0.0.1.nip.io" is the hostname used to access the modelix instance.
    In a development environment this can just be localhost or use nip.io if you want to run multiple instances.

## Model Server

- Option 1: Install your own PostgreSQL database and start the model server from the command line.
  - check the file [../db/initdb.sql](../db/initdb.sql) for the required schema
  - adjust the connection properties in [../model-server/src/main/resources/org/modelix/model/server/database.properties](../model-server/src/main/resources/org/modelix/model/server/database.properties)
  - model server
    - `cd model-server`
    - `../gradlew run`
- Option 2: Use Kubernetes and run the existing images.
  Choose this option if you didn't change anything in the model server code.
  - `./kubernetes-secrets.sh`
  - `./kubernetes-use-latest-tag.sh`
  - `./kubernetes-apply-modelserver.sh`
- Option 3: Use kubernetes and build your own images. Choose this option while developing the model server.
  - `./kubernetes-secrets.sh`
  - `./docker-build-db.sh`
  - `./docker-build-model.sh`
  - `./kubernetes-apply-modelserver.sh`

## Workspaces

Workspaces allow you to run your MPS projects in the kubernetes cluster.

- In docker desktop ensure that at least one volume exists (Dashboard > Volumes)
- `./build-and-deploy.sh`
- `./kubernetes-open-workspaces.sh`
- Add a new workspace and configure your project and its dependencies.

## Web Editor

The web editor is an MPS plugin that requires a running MPS instance.
This can be your usual local IDE or an instance running in kubernetes with [Projector](https://lp.jetbrains.com/projector/).

- Option 1: Local IDE
  - `./gradlew` in the root directory
  - open the project in the [/mps/](../mps/) folder with the MPS version specified in [mps-version.properties](../mps-version.properties)
  - <http://localhost:33333/>
- Option 2: Projector and Kubernetes using the existing docker image
  - `./kubernetes-use-latest-tag.sh`
  - `./kubernetes-apply-projector.sh`
  - `./kubernetes-open-projector.sh`
- Option 3: Projector and Kubernetes using you own image. Use this option while developing the MPS plugins.
  - `./gradlew`
  - `./docker-build-projector-base.sh`
  - `./docker-build-projector.sh`
  - `./kubernetes-apply-projector.sh`
  - `./kubernetes-open-projector.sh`

### Connect MPS to the Model Server

When running MPS with Kubernetes it will automatically connect to the model server and synchronize the modules and projects.

To connect your local MPS IDE follow these instructions:
- `./kubernetes-print-modelserver-url.sh`
- copy this URL to your clipboard
- open the "Cloud" view in the bottom left corner of MPS
- in the context menu of the root node labeled "Cloud" choose "Add Model Server"
- paste the model server URL
- navigate to "default" > "data [master]" > "ROOT #1" and choose "Add Module" from the context menu
- add a model to that module using the context menu
- choose "Bind to Transient Module" from the context menu of the module
- you should now see that module and the new model in the "Cloud" section at the end in the "Project" view
- open the "Model Properties" of the new model and add at least one language dependency
- now you are able to add new root nodes to the model from the MPS "Project" view

## Running in the google cloud

- https://console.cloud.google.com/kubernetes/list?project=webmps
- Create cluster
    - Name: modelix
    - Zone: europe-west-3c
    - Pool
        - Number of nodes: 1
        - Machine type: n1-standard-2
- `gcloud container clusters get-credentials modelix`
- `./gradlew`
- `./docker-build-all.sh`
- `./docker-push-hub.sh`
- `kubectl create secret generic cloudsql-instance-credentials --from-file=./kubernetes/secrets/cloudsql.json`
- `./kubernetes-secrets.sh`
- SSL certificate (not supported yet)
    - `cd ssl`
    - `./generate.sh`
    - `./kubernetes-create-secret.sh`
- `./kubernetes-apply-gcloud.sh`
- `watch kubectl get all -o wide`
- `kubectl delete horizontalpodautoscaler.autoscaling/ui-autoscaler`
- Entities example
    - `cd samples/entities/`
    - `./docker-build.sh`
    - `./docker-push.sh`
    - `kubectl apply -f deployment.yaml -f service.yaml`
