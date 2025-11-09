# Create a GCR bucket (actually GCR uses storage buckets implicitly; this creates a storage bucket you can use)
resource "google_storage_bucket" "gcr_bucket" {
  name                        = "${var.project_id}-container-registry"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}
