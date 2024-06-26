#!/bin/bash
 docker load -i cognito_dev.tar
 docker-compose -f app_dev.yml up