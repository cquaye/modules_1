variable "project_id" {
    type = string
}

variable "creds" {
    type = string
}

variable "prefix" {
    type = string
}

variable "bucket" {
    type = string
}
/*
variable "source01" {
    type = string
}

variable "version" {
    type = string
}
*/

variable "network_name" {
    type = string
    default = "main"
  
}

variable "subnet_name" {
    type = string
    default = "iowa"
  
}

variable "region" {
    type = string
    default = "us-central1"
  
}

variable "ip_cidr_range" {
    type = string
    default = "10.69.20.0/24"
  
}



variable "vm_name" {
    type = string
    default = "iowa-vm"
  
}

variable "zone" {
    type = string
    default = "us-central1-a"
  
}

variable "machine_type" {
    type = string
    default = "e2-micro"
  
}

variable "subnet_self_link" {
    type = string
  
}


variable "rule_name" {
  type = string
  default = "allow-http"
}
variable "source_range" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}