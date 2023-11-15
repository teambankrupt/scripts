#!/bin/bash
sudo fuser -k 9090/tcp
sudo nohup java -Xmx512m -Dserver.port=9090 -jar app-stag/app-stag.jar >> app-stag/app-stag.log 2>&1 &
