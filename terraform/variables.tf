variable "environment" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}
variable "synapse_workspace_name" {
  description = "Name of the Synapse workspace"
  type        = string
}

variable "sql_administrator_login" {
  description = "SQL administrator login for Synapse"
  type        = string
}

variable "sql_administrator_login_password" {
  description = "SQL administrator password for Synapse"
  type        = string
  sensitive   = true
}
variable "synapse_location" {
  description = "Azure region for Synapse and its primary Data Lake storage"
  type        = string
}