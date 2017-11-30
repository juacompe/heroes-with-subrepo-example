#!/bin/bash

## Run all acceptance tests

### Go to root folder
    cd `dirname $0`
    cd ../../../

### Run all tests
    rm log.html output.xml report.html
    rm selenium-screenshot-*.png