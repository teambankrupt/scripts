#!/bin/bash
mkdir -p /var/workdir
mv . /var/workdir && cd /var/workdir || exit
mvn -f pom.xml clean package -DskipTests -Denv=dev
docker build -t sayemoid/cognito_dev .