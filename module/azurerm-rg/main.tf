resource "azurerm_resource_group" "mod-rg" {
for_each = var.var-mod-rg
  name     = each.value.rg-name
  location = each.value.rg-location
}