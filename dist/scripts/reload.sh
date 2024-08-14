#!/usr/bin/env bash

docker compose -f mq/docker compose.yaml down || true
docker compose -f micro-services/docker compose.yaml down || true
docker compose down
sudo rm -rf data
docker compose up -d
