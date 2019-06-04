#!/bin/bash
 sudo docker kill frontend  > /dev/null 2>&1
 sudo docker rm frontend > /dev/null 2>&1
 sudo docker-compose build
 sudo docker-compose up -d