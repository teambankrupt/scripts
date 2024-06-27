#!/bin/bash
echo "Building jar file.."
mvn -f pom.xml clean package -DskipTests -Denv=dev -Dmaven.repo.local=.m2/repository --batch-mode --errors --fail-at-end --show-version
echo "Building docker image.."
docker build -t sayemoid/cognito_dev .