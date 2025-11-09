#!/usr/bin/env bash
set -euo pipefail

# Ensure kubeconfig is set (terraform outputs a command)
# e.g. terraform output kubeconfig_command

helm upgrade --install webapp ../helm -f ../helm/values.yaml
kubectl rollout status deployment/webapp
kubectl get svc webapp
