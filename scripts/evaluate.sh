#!/bin/bash

ALLOW=$(opa eval --data ci.rego 'data.ci.allow' | jq '.result[0].expressions[0].value')

echo "Allowed: ${ALLOW}"