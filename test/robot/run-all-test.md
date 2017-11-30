#!/bin/bash

## Run all acceptance tests

### Go to root folder
    cd `dirname $0`
    cd ../../

#### [TODO] Use local built images from <https://stackoverflow.com/questions/40144138/pull-a-local-image-to-run-a-pod-in-kubernetes>
    #eval $(minikube docker-env)

### Build web container
    cd web
    npm run ng build
    docker build -t juacompe/heroweb .

### Start web server
    kubectl create -f web_pod.yml

### Run all tests
    pybot .

### Stop web server (Still don't know how)
#### May be we need to move things into docker
    