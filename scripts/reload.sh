#!/usr/bin/env bash

sudo rm -rf data
docker-compose down -v --remove-orphans
docker-compose up --build -d
