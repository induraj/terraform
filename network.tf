resource  "google_compute_network" "main" {
  name = "main"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "common" {
  name          = "common"
  ip_cidr_range = "192.168.1.0/24"
  network       = "${google_compute_network.main.self_link}"
  region        = "us-east1"
}

resource "google_compute_subnetwork" "data" {
  name          = "data"
  ip_cidr_range = "192.168.2.0/24"
  network       = "${google_compute_network.main.self_link}"
  region        = "us-east1"
}

resource "google_compute_subnetwork" "app" {
  name          = "app"
  ip_cidr_range = "192.168.3.0/24"
  network       = "${google_compute_network.main.self_link}"
  region        = "us-east1"
}

