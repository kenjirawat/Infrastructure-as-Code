// Configure the Google Cloud provider
provider "google" {
  project     = "${var.project-id}"
  region      = "${var.region}"
}
data "google_project" "current" {}
data "google_compute_default_service_account" "default" {}

resource "google_compute_network" "iac-custom-network" {
  name                     = "${var.network-name}"         
  auto_create_subnetworks  = "false"
}
resource "google_compute_subnetwork" "iac-custom-subnet" {
  name          = "${var.network-name}"
  ip_cidr_range = "${var.ip-interface}"
  network       = "${google_compute_network.iac-custom-network.name}"
  region        = "${var.region}"
}

resource "google_compute_instance" "default" {
  name         = "${var.instance-name}"
  machine_type = "${var.machine-type}"
  zone         = "${var.zone}"

  tags = ["${var.tags}"]

  network_interface {
    subnetwork = "${google_compute_subnetwork.iac-custom-subnet.name}"
    access_config {
      # Ephemeral   public ip
    }
  }
  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
}
resource "google_compute_firewall" "default" {
  name    = "${var.firewall-name}"
  network = "${google_compute_network.iac-custom-network.name}"
  allow {
    protocol = "${var.protocol}"
    ports    = ["${var.port}"]
  }
  source_ranges = ["${var.source_ranges}"]
  target_tags     = ["${var.tags}"]
}