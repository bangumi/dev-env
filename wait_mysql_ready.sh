#!/bin/bash

timeout 30s grep -q 'MySQL init process done. Ready for start up.' <(docker-compose -f "$(dirname "$0")/docker-compose.yaml" logs -f)
timeout 30s grep -q 'ready for connections' <(docker-compose -f "$(dirname "$0")/docker-compose.yaml" logs -f)