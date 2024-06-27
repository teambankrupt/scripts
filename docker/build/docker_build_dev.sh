#!/bin/bash
pwd && microdnf install tree && tree
mvn -f pom.xml clean package -DskipTests -Denv=dev
docker build -t sayemoid/cognito_dev .