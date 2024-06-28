#!/bin/bash

DATA_DIR="/var/cognito/stag"
mkdir -p "$DATA_DIR"
docker compose -f /var/cognito/deployment/app_stag.yml down

docker rmi -f sayemoid/cognito_stag
docker compose -f /var/cognito/deployment/app_stag.yml up