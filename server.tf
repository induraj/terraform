resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20180126"
    }
  }

  // Local SSD disk
//  scratch_disk {
  //}

  network_interface {
    subnetwork = "app"

    access_config {
      // Ephemeral IP
    }
  }

labels = {
    env = "staging"
    scope = "infra"
  }
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
