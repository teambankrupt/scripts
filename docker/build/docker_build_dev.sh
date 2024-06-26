#!/bin/bash
mvn -f pom.xml clean package -DskipTests -Denv=dev --batch-mode --errors --fail-at-end --show-version
docker build -t sayemoid/cognito_dev .