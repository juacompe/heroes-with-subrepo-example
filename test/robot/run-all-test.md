#!/bin/bash

## Run all acceptance tests

### Go to root folder
    cd `dirname $0`
    cd ../../

### Run all tests
    web/scripts/start-web-server.md
    sleep 9 && pybot test
    web/scripts/stop-web-server.md
