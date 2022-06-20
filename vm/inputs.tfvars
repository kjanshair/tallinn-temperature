#### RESOURCE GROUP ####
resource_group_name="weather-rg"
region="southeastasia"

#### VNET ####
vnet_name="weather-vnet"
address_space="10.0.0.0/16"
subnet_prefixes="10.0.1.0/24"
subnet_names="subnet1"

#### VM ####
vm_hostname="weather-vm"
vm_os_simple="UbuntuServer"
admin_username="ubuntu"
vm_os_sku="20_04-lts-gen2"
vm_os_version="latest"
vm_os_offer="0001-com-ubuntu-server-focal"
vm_os_publisher="Canonical"
vm_size="Standard_DS1_v2"
remote_port=22