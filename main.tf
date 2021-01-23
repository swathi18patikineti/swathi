#create resource group
resource "azurerm_resource_group" "rg" {
    name     = var.rgname
    location = var.location
    # tags      = {
    #   Environment = var.system
    # }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  resource_group_name = var.rgname
  location            = var.location
    address_space       = var.addressspace
}

# Create subnet
 resource "azurerm_subnet" "subnet" {
    name                 = "var.subnetname"
   virtual_network_name = "var.vnetname"
    resource_group_name  = "var.rgname"
    address_prefixes       = "var.subnetsaddressspace"
 
}
