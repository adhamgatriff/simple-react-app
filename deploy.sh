#!/bin/bash
  sudo docker kill 365frontend  > /dev/null 2>&1
  sudo docker rm 365frontend > /dev/null 2>&1
  sudo docker-compose build
  sudo docker-compose up -d