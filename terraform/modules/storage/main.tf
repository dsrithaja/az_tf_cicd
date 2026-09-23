resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  is_hns_enabled            = true
}
resource "azurerm_storage_data_lake_gen2_filesystem" "filesystem" {
  name               = "datalake"
  storage_account_id = azurerm_storage_account.storage.id
}