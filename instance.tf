provider "google"{

}

module "google_compute_instance"{
source = "./vm"
region = var.region
zone   = var.zone
machine_type = var.machine_type
}
