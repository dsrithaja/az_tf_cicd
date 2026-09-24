output "databricks_workspace_name" {
  description = "Name of the Databricks workspace"
  value       = azurerm_databricks_workspace.databricks.name
}

output "databricks_workspace_id" {
  description = "ID of the Databricks workspace"
  value       = azurerm_databricks_workspace.databricks.id
}

output "databricks_workspace_url" {
  description = "URL of the Databricks workspace"
  value       = azurerm_databricks_workspace.databricks.workspace_url
}
