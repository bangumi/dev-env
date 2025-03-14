#!/usr/bin/env bash

docker compose -f infra/docker-compose.yaml down || true
docker compose down
sudo rm -rf infra/data
sudo rm -rf data
docker compose up -d
