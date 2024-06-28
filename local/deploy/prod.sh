#!/bin/bash

DATA_DIR="/var/cognito/prod"
mkdir -p "$DATA_DIR"
docker compose -f /var/cognito/deployment/app_prod.yml down

docker rmi -f sayemoid/cognito_prod
docker compose -f /var/cognito/deployment/app_prod.yml up