#!/bin/bash

## Run all acceptance tests

### Go to root folder
    cd `dirname $0`
    cd ../../

### Start web server

    cd web
    ng serve &

### Run all tests

    pybot .

### Stop web server (Still don't know how)
#### May be we need to move things into docker
    