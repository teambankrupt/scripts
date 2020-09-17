#!/bin/bash
sudo fuser -k 8080/tcp
sudo nohup java -Xmx512m -Dserver.port=8080 -jar app-dev/app-dev.jar >> app-dev/app-dev.log >&1 &
