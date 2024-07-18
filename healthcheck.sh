#!/usr/bin/bash

STATUSCODE=$(curl --silent --output /dev/stderr --write-out "%{http_code}" localhost)

if [ "$STATUSCODE" -ne 200 ]; then exit 1; fi
