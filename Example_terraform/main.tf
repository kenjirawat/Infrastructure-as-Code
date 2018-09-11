provider "google" {
  credentials = "${file("../account.json")}"    //* Part file authen
  project     = "PROJECT_ID"                    //* Project ID
  region      = "asia-east1"                    //region machine 
}
resource "google_compute_instance" "infra-ac-1" {    // Build machine
  name = "infra-ac-1"               
  machine_type = "f1-micro"                         //spec machine
  zone         = "asia-east1-a"     

  network_interface {
    network = "default"                             //ip machine 
    access_config {
      # Ephemeral
    }
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"               //image for boot 
    }
  }
 }