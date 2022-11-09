resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket-here"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}