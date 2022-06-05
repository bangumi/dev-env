#!/bin/bash

for _ in {1..60}; do
  # your-unix-command-here
  if mysqladmin ping -h "127.0.0.1" silent; then
    exit 0
  fi
  sleep 0.5
done

echo "timeout"

exit 1
