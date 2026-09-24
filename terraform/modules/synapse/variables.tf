variable "synapse_workspace_name" {
  description = "Name of the Synapse workspace"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where Synapse will be created"
  type        = string
}

variable "location" {
  description = "Azure region for the Synapse workspace"
  type        = string
}

variable "storage_data_lake_gen2_filesystem_id" {
  description = "ID of the ADLS Gen2 filesystem used by Synapse"
  type        = string
}

variable "sql_administrator_login" {
  description = "SQL administrator login for the Synapse workspace"
  type        = string
}

variable "sql_administrator_login_password" {
  description = "SQL administrator password for the Synapse workspace"
  type        = string
  sensitive   = true
}