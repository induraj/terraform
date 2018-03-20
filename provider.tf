// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("/gcp/credentials/bullet-points-34efc7e9744f.json")}"
  project     = "bullet-points"
  region      = "us-east1"
}

