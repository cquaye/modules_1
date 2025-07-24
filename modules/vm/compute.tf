resource "google_compute_instance" "vm_instance" {
    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }

    network_interface {
      subnetwork = var.subnet_self_link
      access_config {}
    }

    metadata_startup_script = file( "${path.module}/startup.sh")
  
}