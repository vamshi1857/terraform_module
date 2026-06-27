provider "google" {
  project     = "project-2e8daeec-e207-40dd-870"
  region      = var.region
}

resource "google_compute_instance" "my-tfinstance2" {
  name         = "my-tfinstance2"
  machine_type = var.machine_type

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
variable "region"{}
variable "machine_type" {
  
}
