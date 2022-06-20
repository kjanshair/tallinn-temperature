resource "azurerm_resource_group" "weather-rg" {
  name     = var.resource_group_name
  location = var.region
}

module "network" {
  source              = "Azure/network/azurerm"
  vnet_name           = var.vnet_name
  resource_group_name = azurerm_resource_group.weather-rg.name
  address_space      = var.address_space
  subnet_prefixes     = [var.subnet_prefixes]
  subnet_names        = [var.subnet_names]
  depends_on = [azurerm_resource_group.weather-rg]
}