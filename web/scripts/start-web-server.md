#!/bin/bash

### Start web server
    cd `dirname $0`
    cd ../
    kubectl create -f web_svc.yml
    kubectl create -f web_pod.yml
