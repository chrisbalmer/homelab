#!/bin/bash

LOGIN_ITEM=$(op get item "firewall.balmerfamilyfarm.com - terraform")
export PANOS_HOSTNAME=$(echo $LOGIN_ITEM | jq '.details.sections[] | select(.title == "Variables") | .fields[] | select(.t == "host") | .v' -r)
export PANOS_USERNAME=$(echo $LOGIN_ITEM | jq '.details.fields[] | select(.designation == "username") | .value' -r)
export PANOS_PASSWORD=$(echo $LOGIN_ITEM | jq '.details.fields[] | select(.designation == "password") | .value' -r)
export PANOS_TIMEOUT=60

# Requires compiling panos-commit
# https://registry.terraform.io/providers/PaloAltoNetworks/panos/latest/docs#commits
panos-commit #-nosync