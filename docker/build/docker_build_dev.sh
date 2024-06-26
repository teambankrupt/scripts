#!/bin/bash
mvn -f pom.xml clean package -DskipTests -Denv=dev -Dmaven.repo.local=.m2/repository
docker build -t sayemoid/cognito_dev .