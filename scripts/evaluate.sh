#!/bin/bash

ALLOW=$(opa eval --input package.json --data ci.rego --format pretty 'data.ci.allow')

if [ ${ALLOW} == true ]; then
    exit 0
else
    exit 1
fi
