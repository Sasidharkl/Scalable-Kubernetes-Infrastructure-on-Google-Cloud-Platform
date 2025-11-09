# Scalable-Kubernetes-Infrastructure-on-Google-Cloud-Platform

This repository provisions a GKE cluster and deploys a sample web application using Helm.
It also installs a monitoring stack (Prometheus + Grafana) via Helm values.

## Features
- Terraform-managed GKE cluster, VPC subnet, and node pool
- Container image build + push to Google Container Registry (GCR)
- Helm chart for app deployment with Service + Ingress
- Prometheus + Grafana Helm values to install a monitoring stack
- Helper scripts for build, deploy and teardown

## Prerequisites
- Google Cloud account with billing enabled
- `gcloud`, `kubectl`, `terraform`, `helm`, `docker` installed
- `gcloud` authenticated (`gcloud auth login` and `gcloud auth application-default login`)
- Set `GOOGLE_PROJECT`, `GOOGLE_REGION` and other variables in `terraform/terraform.tfvars.example` (copy to terraform.tfvars)

## Quickstart (local)
1. Configure Terraform variables:
   ```bash
   cp terraform/terraform.tfvars.example terraform/terraform.tfvars
   # Edit terraform/terraform.tfvars with your project, region, zone and ssh keys
