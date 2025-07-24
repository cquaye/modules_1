output "network_self_link" {
    value = google_compute_network.main.self_link
}

output "subnet_self_link" {
    value = google_compute_subnetwork.iowa.self_link
  
}

output "network_name" {
    value = google_compute_network.main.name
  
}