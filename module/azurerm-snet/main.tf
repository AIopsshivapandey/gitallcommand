resource  "azurerm_subnet" "mod-snet" {
  for_each = var.var-mod-snet
  name                 = each.value.snet-name
  resource_group_name  = each.value.snet-rg
  virtual_network_name = each.value.snet-vnet
  address_prefixes     = each.value.snet-address-prefixes
}  
