variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the Key Vault will be created"
  type        = string
}

variable "location" {
  description = "Azure region for the Key Vault"
  type        = string
}