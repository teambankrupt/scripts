#!/bin/bash
sudo fuser -k 5050/tcp
sudo nohup java -Xmx1024m -Dserver.port=5050 -jar app-prod/app-prod.jar >> app-prod/app-prod.log 2>&1 &
