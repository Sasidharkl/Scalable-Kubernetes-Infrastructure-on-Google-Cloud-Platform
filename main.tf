resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  ip_allocation_policy {}
  network    = var.network

  addons_config {
    http_load_balancing {}
    horizontal_pod_autoscaling {}
    kubernetes_dashboard {
      disabled = true
    }
  }
}

# Optional: enable necessary APIs (note: in some accounts you might require manual enable)
resource "google_project_service" "container" {
  service = "container.googleapis.com"
}

resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}
