
data "azurerm_client_config" "current" {}
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
module "synapse" {
  source = "./modules/synapse"

  synapse_workspace_name               = var.synapse_workspace_name
  resource_group_name                  = azurerm_resource_group.rg.name
  location                             = var.synapse_location
  storage_data_lake_gen2_filesystem_id = module.synapse_storage.filesystem_id

  sql_administrator_login          = var.sql_administrator_login
  sql_administrator_login_password = var.sql_administrator_login_password
}
module "synapse_storage" {
  source = "./modules/storage"

  storage_account_name = "${var.project_name}${var.environment}synapsestorage"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = var.synapse_location
}

resource "azurerm_role_assignment" "synapse_storage_blob_contributor" {
  scope              = module.synapse_storage.filesystem_resource_manager_id
  role_definition_id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
  principal_id       = module.synapse.synapse_principal_id
}