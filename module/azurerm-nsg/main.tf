
resource "azurerm_network_security_group" "mod-nsg" {
  for_each = var.var-mod-nsg
  name                = each.value.nsg-name
  location            = each.value.nsg-location
  resource_group_name = each.value.nsg-rg

  dynamic "security_rule" {
    for_each = each.value.nsg-security-rules
    content {
    name                       = security_rule.value.nsg-security-rule-name
    priority                   = security_rule.value.nsg-security-rule-priority
    direction                  = security_rule.value.nsg-security-rule-direction
    access                     = security_rule.value.nsg-security-rule-access
    protocol                   = security_rule.value.nsg-security-rule-protocol
    source_port_range          = security_rule.value.nsg-security-rule-source-port-range
    destination_port_range     = security_rule.value.nsg-security-rule-destination-port-range
    source_address_prefix      = security_rule.value.nsg-security-rule-source-address-prefix
    destination_address_prefix = security_rule.value.nsg-security-rule-destination-address-prefix
  
    }
  }

}