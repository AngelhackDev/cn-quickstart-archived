#!/bin/bash

# Set the environment variables directly
export IMAGE_REPO="ghcr.io/digital-asset/decentralized-canton-sync/docker/"
export IMAGE_TAG="0.4.1"
export DOCKER_NETWORK="quickstart"

# Source other environment variables
source ./temp_env.sh

# Run the Canton console with explicit image reference
docker compose -f docker/canton-console/compose.yaml --env-file .env --env-file .env.local --env-file env/ports.env --env-file env/app-provider.env run --rm canton-console-app-provider

# If the above fails, try with explicit image reference
if [ $? -ne 0 ]; then
  echo "Trying with explicit image reference..."
  CANTON_IMAGE="ghcr.io/digital-asset/decentralized-canton-sync/docker/canton:0.4.1"
  docker compose -f docker/canton-console/compose.yaml --env-file .env --env-file .env.local --env-file env/ports.env --env-file env/app-provider.env run --rm -e IMAGE_REPO="ghcr.io/digital-asset/decentralized-canton-sync/docker/" -e IMAGE_TAG="0.4.1" canton-console-app-provider
fi
