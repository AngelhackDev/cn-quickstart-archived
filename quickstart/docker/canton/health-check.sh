#!/bin/bash
set -e

# Check app-user participant health
grpcurl -plaintext localhost:2${CANTON_GRPC_HEALTHCHECK_PORT} grpc.health.v1.Health/Check

# Check app-provider participant health
grpcurl -plaintext localhost:3${CANTON_GRPC_HEALTHCHECK_PORT} grpc.health.v1.Health/Check

# Check sv participant health if LOCALNET_ENABLED, but don't fail if it's not available
if [ "$LOCALNET_ENABLED" = true ]; then
  # Use set +e to prevent script from exiting if this check fails
  set +e
  grpcurl -plaintext localhost:4${CANTON_GRPC_HEALTHCHECK_PORT} grpc.health.v1.Health/Check
  # Reset to exit on error for any subsequent commands
  set -e
fi