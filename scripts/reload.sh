#!/usr/bin/env bash

sudo rm -rf data
docker-compose down -v
docker-compose up build -d
