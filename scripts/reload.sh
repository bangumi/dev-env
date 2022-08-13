#!/usr/bin/env bash

docker-compose down -v --remove-orphans
sudo rm -rf data
docker-compose up --build -d
