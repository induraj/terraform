resource "google_storage_bucket" "terraform-state" {
  name     = "sharma-bucket-terraform"
  location = "asia"
  labels = {
    env = "production"
    scope = "infra"
  }
}

