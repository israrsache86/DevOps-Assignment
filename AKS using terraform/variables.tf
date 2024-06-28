variable "resource_group_name" {
  type = string
  default = "aks-rgs"
}

variable "location" {
  type = string
  default = "East US 2"
}

variable "cluster_name" {
  type = string
  default = "aks-cluster"
}

variable "dns_prefix" {
  type = string
  default = "akscluster"
}

variable "node_name" {
  type = string
  default = "default"
}

variable "node_count" {
  type = number
  default = 1
}

variable "vm_size" {
  type = string
  default = "Standard_D2as_v4"
}

