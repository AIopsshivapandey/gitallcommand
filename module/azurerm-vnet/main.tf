resource "azurerm_virtual_network" "mod-vnet" {
for_each = var.var-mod-vnet
name                = each.value.vnet-name
location            = each.value.vnet-location
resource_group_name = each.value.vnet-rg
address_space       = each.value.vnet-address-space
 
}