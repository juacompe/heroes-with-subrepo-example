#!/bin/bash

### Stop web server
    cd `dirname $0`
    cd ../
    kubectl delete -f web_svc.yml
    kubectl delete -f web_pod.yml
