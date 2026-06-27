provider "google"{
region = var.region
zone   = var.zone
}

module "google_compute_instance"{
source = "./vm"
}
