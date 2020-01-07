# WebMPS

<a href="https://build.mbeddr.com/project.html?projectId=WebMps_WebMpsBuild&tab=projectOverview"><img src="http://build.mbeddr.com/app/rest/builds/buildType:(id:WebMps_WebMpsBuild)/statusIcon"/></a>


Cloud storage and web UI for MPS


## Build and Run in the google cloud

- https://console.cloud.google.com/kubernetes/list?project=webmps
- Create cluster
    - Name: cloudmps
    - Zone: europe-west-3c
    - Pool
        - Number of nodes: 1
        - Machine type: n1-standard-2
- `gcloud container clusters get-credentials cloudmps`
- `./gradlew`
- `./docker-build-all.sh`
- `./docker-push-hub.sh`
- `kubectl create secret generic cloudsql-instance-credentials --from-file=./kubernetes/secrets/cloudsql.json`
- `kubectl create secret generic modelsecret --from-file=./kubernetes/secrets/modelsecret.txt`
- SSL certificate
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


