resource "azurerm_resource_group" "rg" {
  name     = "${var.project_name}-${var.environment}-rg"
  location = var.location
}
module "storage" {
  source = "./modules/storage"

  storage_account_name = "${var.project_name}${var.environment}storage"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = var.location
}
module "key_vault" {
  source = "./modules/key-vault"

  key_vault_name      = "${var.project_name}-${var.environment}-kv"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}
module "adf" {
  source = "./modules/adf"

  data_factory_name   = "${var.project_name}-${var.environment}-adf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}