resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  location            = var.law_location
  resource_group_name = var.law_rg_name
  sku                 = var.sku
  retention_in_days   =  var.retention_in_days
}




