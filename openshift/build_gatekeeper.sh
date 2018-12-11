#!/bin/bash

oc new-build -n keycloak --name=keycloak-gatekeeper --strategy=docker --context-dir openshift https://github.com/bentaljaard/keycloak-gatekeeper.git
