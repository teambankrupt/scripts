#!/bin/bash
DATA_DIR="/var/cognito/dev"
mkdir -p $DATA_DIR
docker compose -f /var/cognito/deployment/app_dev.yml down

docker rmi -f sayemoid/cognito_dev
docker compose -f /var/cognito/deployment/app_dev.yml up