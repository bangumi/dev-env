#!/bin/bash

for _ in {1..60}; do
  # your-unix-command-here
  if docker exec bangumi_mysql mysql --user=user --password=password -e "SELECT 1" >/dev/null 2>&1; then
    docker exec bangumi_mysql mysql --user=user --password=password -e "SELECT 1"
    exit 0
  fi
  sleep 0.5
done

echo "timeout"

exit 1
