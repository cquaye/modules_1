resource "google_compute_subnetwork" "iowa" {
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}