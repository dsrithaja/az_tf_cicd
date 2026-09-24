output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.storage.id
}
output "filesystem_id" {
  description = "ID of the ADLS Gen2 filesystem"
  value       = azurerm_storage_data_lake_gen2_filesystem.filesystem.id
}
output "filesystem_resource_manager_id" {
  description = "Azure Resource Manager ID of the ADLS Gen2 filesystem"
  value       = "${azurerm_storage_account.storage.id}/blobServices/default/containers/${azurerm_storage_data_lake_gen2_filesystem.filesystem.name}"
}