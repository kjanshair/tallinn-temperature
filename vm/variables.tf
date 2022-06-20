# variable "subscription_id" {}
# variable "client_id" {}
# variable "client_secret" {}
# variable "tenant_id" {}

####################################
# RESOURCE GROUP
####################################

variable "resource_group_name" {
  default = "nil"
}

variable "region" {
  default = "southeastasia"
}

####################################
# NETWORK
####################################

variable "vnet_name" {
  default = "mynetwork"
}

variable "address_space" {
  default = "0.0.0.0/0"
}

variable "subnet_prefixes" {
  default = "0.0.0.0/0"
}

variable "subnet_names" {
  default = "subnet1"
}

####################################
# COMPUTE: VM
####################################

variable "vm_hostname" {
 default = "my-vm" 
}

variable "vm_os_simple" {
  default = "UbuntuServer"
}

variable "admin_username" {
  default = "ubuntu"
}

variable "vm_os_sku" {
  default = "20_04-lts-gen2"
}

variable "vm_os_version" {
  default = "latest"
}

variable "vm_os_offer" {
  default = "0001-com-ubuntu-server-focal"
}

variable "vm_os_publisher" {
  default = "Canonical"
}

variable "vm_size" {
  default = "Standard_DS1_v2"
}

variable "remote_port" {
  default = 22
}
