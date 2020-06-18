# modelix

<a href="https://build.mbeddr.com/project.html?projectId=WebMps_WebMpsBuild&tab=projectOverview"><img src="http://build.mbeddr.com/app/rest/builds/buildType:(id:WebMps_WebMpsBuild)/statusIcon"/></a>

Cloud storage and web UI for MPS

# How to run modelix

In production modelix uses docker images running in a kubernetes cluster.
During development you can run the different components without docker/kubernetes.
You need a PostgreSQL database, the model server and the MPS plugin for the UI server.

## Running without kubernetes

While you can install PostgreSQL locally it's easier to just run the docker image.
This gives you an empty ready to use database each time you restart the docker image.
If you still want to install a PostgreSQL server check the files [./db/initdb.sql](./db/initdb.sql) and
[./model-server/src/main/resources/org/modelix/model/server/database.properties](./model-server/src/main/resources/org/modelix/model/server/database.properties).

- database
    - Change the port in [./model-server/src/main/resources/org/modelix/model/server/database.properties](./model-server/src/main/resources/org/modelix/model/server/database.properties) to 54333 or change the port in [./docker-run-db.sh](./docker-run-db.sh) to 5432
	- `./docker-build-db.sh`
    - `./docker-run-db.sh`
- model server
    - `cd model-server`
    - `./gradlew run`
- UI server
    - open the project in the folder "mps" with MPS
    - <http://localhost:33333/>

## Running with minikube

- minikube start --cpus=6 --memory=12GB --disk-size=40GB

- `./kubernetes-modelsecret.sh`
- SSL certificate (not supported yet)
    - `cd ssl`
    - `./generate.sh`
    - `./kubernetes-create-secret.sh`
- `./kubernetes-apply-local.sh`

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

