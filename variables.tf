variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}

variable "cluster_name" {
  type    = string
  default = "gke-cluster"
}

variable "network" {
  type    = string
  default = "default"
}

variable "node_count" {
  type    = number
  default = 2
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "service_account_email" {
  description = "Service account email for GKE nodes (optional)"
  type        = string
  default     = ""
}
