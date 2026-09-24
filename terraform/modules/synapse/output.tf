output "synapse_workspace_name" {
  description = "Name of the Synapse workspace"
  value       = azurerm_synapse_workspace.synapse.name
}

output "synapse_workspace_id" {
  description = "ID of the Synapse workspace"
  value       = azurerm_synapse_workspace.synapse.id
}

output "synapse_principal_id" {
  description = "Principal ID of the Synapse workspace managed identity"
  value       = azurerm_synapse_workspace.synapse.identity[0].principal_id
}