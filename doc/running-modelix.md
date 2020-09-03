In production modelix uses docker images running in a kubernetes cluster.
During development you can run the different components without docker/kubernetes.
You need a PostgreSQL database, the model server and the MPS plugin for the UI server.

## Running without kubernetes

- `./gradlew` in the root directory
- open the project in the folder "mps" with MPS 2020.1.1
- <http://localhost:33333/>

This allows you to edit the models stored locally in MPS.
Optionally, you can run the model server and connect your MPS to it:

- database
  - option 1: run the docker image
    - install docker: <https://docs.docker.com/get-docker/>
    - `./docker-build-db.sh`
    - `./docker-run-db.sh`
  - option 2: use your own PostgreSQL server
    - check the file [./db/initdb.sql](./db/initdb.sql) for the required schema
    - adjust the connection properties in [./model-server/src/main/resources/org/modelix/model/server/database.properties](./model-server/src/main/resources/org/modelix/model/server/database.properties)
- model server
  - `cd model-server`
  - `./gradlew run`
- connect MPS to the model server
  - open the "Cloud" view in the bottom left corner
  - In the context menu of the root node labeled "Cloud" choose "Add Repository"
  - type `http://localhost:28101/`
  - navigate to "default tree (default)" > "data [master]" > "ROOT #1" and choose "Add Module" from the context menu
  - add a model to that module using the context menu
  - choose "Bind to Transient Module" from the context menu of the module
  - you should now see that module and the new model in the "Cloud" section at the end in the "Project" view
  - open the "Model Properties" of the new model and add at least one language dependency
  - now you are able to add new root nodes to the model from the MPS "Project" view

## Running with minikube

- `minikube start --cpus=4 --memory=8GB --disk-size=40GB`
- `./kubernetes-modelsecret.sh`
- SSL certificate
    - `cd ssl`
    - `./generate.sh`
    - `./kubernetes-create-secret.sh`
    - `cd ..`
- `eval $(minikube -p minikube docker-env)`
- `./docker-build-all.sh`
- `./kubernetes-apply-local.sh`
- Wait ~2 minutes. You can check the status of the cluster using `minikube dashboard` or `kubectl get all`
- `minikube service proxy`
- connect MPS to the model server: same steps as described at "Running without kubernetes", but use the URL you see when you executed `minikube service proxy` and append "model/" (e.g. http://192.168.64.2:31894/model/)

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
- `./kubernetes-modelsecret.sh`
- SSL certificate (not supported yet)
    - `cd ssl`
    - `./generate.sh`
    - `./kubernetes-create-secret.sh`
- `./kubernetes-apply-gcloud.sh`
- `watch kubectl get all -o wide`
- `kubectl delete horizontalpodautoscaler.autoscaling/ui-autoscaler`
- `kubectl delete deployment.apps/pgadmin`
- Entities example
    - `cd samples/entities/`
    - `./docker-build.sh`
    - `./docker-push.sh`
    - `kubectl apply -f deployment.yaml -f service.yaml`
