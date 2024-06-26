#!/bin/bash
 export DATA_DIR=cognito/dev
 docker load -i cognito_dev.tar
 docker compose -f app_dev.yml up