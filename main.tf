provider "google" {
    project = "sprout-302914"
    region = "us-central1"
}

resource "google_compute_instance" "varun_vm" {
    name = "varun_vm"
    machine_type = "f1-micro"
    zone = "us-central-a"
    network_interface {
      
      network = "default"
    }

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-10"
      }
    }
  
}