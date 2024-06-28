#!/bin/bash
ENV=$1
if [ "$ENV" != "dev" ] && [ "$ENV" != "stag" ] && [ "$ENV" != "prod" ]; then
  echo "Err: env must be one of these items -> dev | stag | prod"
  exit
fi

DATA_DIR="/var/cognito/$ENV"
mkdir -p "$DATA_DIR"
docker compose -f /var/cognito/deployment/app_"$ENV".yml down

docker rmi -f sayemoid/cognito_"$ENV"
docker compose -f /var/cognito/deployment/app_"$ENV".yml up