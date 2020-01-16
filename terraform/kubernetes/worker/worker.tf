
resource "google_compute_instance" "vm_instance" {
  name = "worker"
  # machine_type = "f1-micro"
  machine_type = "e2-standard-2"
  # project      = "green-buttress-260810"
  # zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # metadata_startup_script = "sudo apt-get update;"
  metadata_startup_script = "sh ./bash/worker_startup.sh"

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
