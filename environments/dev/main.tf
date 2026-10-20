module "env-dev-rg" {
  source     = "../../module/azurerm-rg"
  var-mod-rg = var.var-env-dev-rg
}
module "env-dev-vnet" {
  depends_on   = [module.env-dev-rg]
  source       = "../../module/azurerm-vnet"
  var-mod-vnet = var.var-env-dev-vnet
}

module "env-dev-snet" {
  depends_on   = [module.env-dev-vnet]
  source       = "../../module/azurerm-snet"
  var-mod-snet = var.var-env-dev-snet
}