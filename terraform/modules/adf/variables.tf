variable "data_factory_name" {
  description = "Name of the Azure Data Factory"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where ADF will be created"
  type        = string
}

variable "location" {
  description = "Azure region for ADF"
  type        = string
}