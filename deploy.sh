#!/bin/bash
 docker kill frontend  > /dev/null 2>&1
 docker rm frontend > /dev/null 2>&1
 docker-compose up -d