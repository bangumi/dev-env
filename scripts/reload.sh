#!/usr/bin/env bash

docker-compose down -v --remove-orphans || true
docker-compose -f mq/docker-compose.yaml down || true
docker-compose -f micro-services/docker-compose.yaml down || true
sudo rm -rf data
docker-compose up -d
