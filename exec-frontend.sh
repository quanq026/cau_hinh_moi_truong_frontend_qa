#!/bin/bash
set -e

docker run -d \
  --name rikkei-frontend-qa \
  -e API_ENDPOINT="https://qa-api.rikkei.edu.vn" \
  nginx

docker exec -it rikkei-frontend-qa sh -c 'echo "API_ENDPOINT=$API_ENDPOINT"'
