variable "databricks_workspace_name" {
  description = "Name of the Azure Databricks workspace"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where Databricks will be created"
  type        = string
}

variable "location" {
  description = "Azure region for Databricks"
  type        = string
}

variable "sku" {
  description = "Databricks workspace SKU"
  type        = string
  default = "premium"
}