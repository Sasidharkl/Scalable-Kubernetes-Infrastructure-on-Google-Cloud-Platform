#!/usr/bin/env bash
set -euo pipefail

PROJECT_ID=${PROJECT_ID:-$(gcloud config get-value project 2>/dev/null)}
IMAGE_NAME="${PROJECT_ID}/webapp:latest"

echo "Building Docker image: gcr.io/${IMAGE_NAME}"
docker build -t "gcr.io/${IMAGE_NAME}" ../app

echo "Authenticating docker with gcloud"
gcloud auth configure-docker -q

echo "Pushing to GCR"
docker push "gcr.io/${IMAGE_NAME}"

echo "Image pushed: gcr.io/${IMAGE_NAME}"
