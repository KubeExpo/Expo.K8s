provider "google" {
  # credentials = "${file("service-account.json")}"
  project = var.project_name
  # region  = var.region_name
  zone    = var.zone_name
}

module "master_nodes" {
  source = "./kubernetes/master"
}

module "worker_nodes" {
  source = "./kubernetes/worker"
}