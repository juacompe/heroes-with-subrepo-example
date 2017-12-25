#!/bin/bash

### Build web container
    cd `dirname $0`
    cd ../
    npm run ng build
    docker build -t juacompe/heroweb .
    docker push juacompe/heroweb
