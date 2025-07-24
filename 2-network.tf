# Creating vpc and subnetwork

module "network" {
    source        = "./modules/network"
    network_name  = var.network_name
    subnet_name   = var.subnet_name
    region        = var.region
    ip_cidr_range = var.ip_cidr_range
  
}

# Creating virtual machine
module "vm" {
  source    = "./modules/vm"
  vm_name   = var.vm_name
  zone      = var.zone
  machine_type = var.machine_type
  subnet_self_link = module.network.subnet_self_link
}

# Creating firewall rule

module "firewall" {
    source        = "./modules/firewall"
    network_name  = var.network_name
    rule_name     = var.rule_name
    source_range  = var.source_range

  
}