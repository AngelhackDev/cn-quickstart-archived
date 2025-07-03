#!/bin/bash

# Change to the quickstart directory
cd "$(dirname "$0")"

# Set explicit environment variables
export IMAGE_REPO="ghcr.io/digital-asset/decentralized-canton-sync/docker/"
export IMAGE_TAG="0.4.1"

# Source the environment variables
source ./temp_env.sh

# Run the Canton console with explicit image reference
echo "Starting Canton console with explicit image reference..."
docker compose -f docker/canton-console/compose.yaml \
  --env-file .env \
  --env-file .env.local \
  --env-file env/ports.env \
  --env-file env/app-provider.env \
  run --rm canton-console-app-provider

# make console-app-provider