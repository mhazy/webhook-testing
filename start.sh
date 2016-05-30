#!/bin/bash

if [ -z "$APP" ]; then
    export APP=server.js
fi

cd /src
pm2 start -x $APP --no-daemon
