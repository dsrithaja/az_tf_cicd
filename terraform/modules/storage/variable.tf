variable "storage_account_name" {
  description = "Globally unique name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the storage account will be created"
  type        = string
}

variable "location" {
  description = "Azure region for the storage account"
  type        = string
}