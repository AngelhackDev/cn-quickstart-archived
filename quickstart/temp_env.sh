#!/bin/bash
# User-specific variables
export PARTY_HINT="quickstart-quyetdc-1"
export LOCALNET_ENABLED="true"
export OBSERVABILITY_ENABLED="false" # Temporarily disabled to avoid image download issues

# Docker network
export DOCKER_NETWORK="quickstart"

# Port variables
export PARTICIPANT_LEDGER_API_PORT="5001"
export PARTICIPANT_ADMIN_API_PORT="5002"
export PARTICIPANT_JSON_API_PORT="7575"
export VALIDATOR_ADMIN_API_PORT="5003"
export CANTON_HTTP_HEALTHCHECK_PORT="7000"
export CANTON_GRPC_HEALTHCHECK_PORT="5061"
export APP_USER_UI_PORT="2000"
export APP_PROVIDER_UI_PORT="3000"
export SV_UI_PORT="4000"
export BACKEND_PORT="8080"
# Internal container port is 5432, but mapped to host port 5433 to avoid conflicts
export DB_PORT="5432"

# Observability ports
export OTEL_COLLECTOR_OTLP_PORT="14001"
export OTEL_COLLECTOR_FLUENTD_PORT="14002"
export PROMETHEUS_HTTP_PORT="14011"
export LOKI_HTTP_PORT="14012"
export TEMPO_OTLP_PORT="14013"
export TEMPO_HTTP_PORT="14014"
export CANTON_METRICS_PORT="14021"
export CADVISOR_METRICS_PORT="14022"
export POSTGRES_EXPORTER_METRICS_PORT="14023"
export NGINX_EXPORTER_METRICS_PORT="14024"

# Auth variables
export AUTH_APP_PROVIDER_TOKEN_URL="http://nginx-keycloak:8082/realms/AppProvider/protocol/openid-connect/token"

# Variables from .env file
# Daml Versions
export DAML_RUNTIME_VERSION="3.3.0-snapshot.20250502.13767.0.v2fc6c7e2"

# Images
export IMAGE_REPO="ghcr.io/digital-asset/decentralized-canton-sync/docker/"
export IMAGE_TAG="0.4.1"

# Database
export POSTGRES_VERSION="14"
export DB_USER="cnadmin"
export DB_PASSWORD="supersafe"
export DB_SERVER="postgres"

# PQS
export SCRIBE_IMAGE="digitalasset-docker.jfrog.io/participant-query-store"
export SCRIBE_VERSION="0.5.8"

# Nginx
export NGINX_VERSION="1.27.0"

# Backend
export JAVA_VERSION="17.0.12_7-jdk"

# Daml shell
export SHELL_IMAGE="digitalasset-docker.jfrog.io/daml-shell"
export SHELL_VERSION="0.1.7"

# Logging
export LOG_LEVEL="INFO"

# Observability images
export OTEL_COLLECTOR_IMAGE="otel/opentelemetry-collector-contrib"
export OTEL_COLLECTOR_VERSION="0.108.0"
export PROMETHEUS_IMAGE="prom/prometheus"
export PROMETHEUS_VERSION="v2.54.1"
export LOKI_IMAGE="grafana/loki"
export LOKI_VERSION="3.1.1"
export TEMPO_IMAGE="grafana/tempo"
export TEMPO_VERSION="2.5.0"
export GRAFANA_IMAGE="grafana/grafana"
export GRAFANA_VERSION="11.1.5"
export CADVISOR_IMAGE="gcr.io/cadvisor/cadvisor"
export CADVISOR_VERSION="v0.50.0"
export NGINX_EXPORTER_IMAGE="nginx/nginx-prometheus-exporter"
export NGINX_EXPORTER_VERSION="1.3.0"
export POSTGRES_EXPORTER_IMAGE="prometheuscommunity/postgres-exporter"
export POSTGRES_EXPORTER_VERSION="v0.15.0"

# Print environment for verification
echo "PARTY_HINT=$PARTY_HINT"
echo "DOCKER_NETWORK=$DOCKER_NETWORK"
echo "IMAGE_REPO=$IMAGE_REPO"
echo "IMAGE_TAG=$IMAGE_TAG"
echo "POSTGRES_VERSION=$POSTGRES_VERSION"
echo "NGINX_VERSION=$NGINX_VERSION"
echo "JAVA_VERSION=$JAVA_VERSION"
