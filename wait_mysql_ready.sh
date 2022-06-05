#!/bin/bash

for _ in {1..60}; do
  # your-unix-command-here
  if docker exec bangumi-dev-env_mysql_1 mysql --user=user --password=password -e "SELECT 1" >/dev/null 2>&1; then
    exit 0
  fi
  sleep 1
done

docker exec bangumi-dev-env_mysql_1 mysql --user=user --password=password -e "SELECT 1"

echo "timeout"

exit 1
