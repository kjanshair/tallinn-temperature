resource "random_pet" "name" {}

module "linuxservers" {
  source              = "Azure/compute/azurerm"
  resource_group_name = azurerm_resource_group.weather-rg.name
  public_ip_dns       = [random_pet.name.id] // change to a unique name per datacenter region
  # public_ip_dns       = ["lancerevo10"] // change to a unique name per datacenter region
  vnet_subnet_id      = module.network.vnet_subnets[0]
  ssh_key             = "~/.ssh/id_rsa.pub"
  vm_hostname         = var.vm_hostname
  admin_username      = var.admin_username
  vm_os_simple        = var.vm_os_simple
  vm_os_sku           = var.vm_os_sku
  vm_os_version       = var.vm_os_version
  vm_os_offer         = var.vm_os_offer
  vm_os_publisher     = var.vm_os_publisher
  vm_size             = var.vm_size # 1vCPU and 3.5G Memory
  remote_port         = var.remote_port
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination = true

  depends_on = [azurerm_resource_group.weather-rg]
}