#!/bin/bash
mvn -f pom.xml clean package -DskipTests -Denv=dev
docker build -t sayemoid/bankrupt-backend .