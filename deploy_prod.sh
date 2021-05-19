#!/bin/bash
sudo fuser -k 5050/tcp
sudo nohup java -Xmx2048m -Dserver.port=5050 -jar app-prod/app-prod.jar >> app-prod/app-prod.log >&1 &
