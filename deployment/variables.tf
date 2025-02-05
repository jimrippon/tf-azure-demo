# Provider and backend config
variable "subscription_id" {
  type        = string
  description = "Subscription ID for Azure (from `az account show`)"
}

variable "envname" {
  type        = string
  description = "Name of the environment we are deploying (from backend-config)"
}

variable "resource_group_name" {
  type        = string
  description = "Terraform backend state file azure storage resource group"
}

variable "storage_account_name" {
  type        = string
  description = "Terraform backend state file azure storage account name"
}

variable "container_name" {
  type        = string
  description = "Terraform backend state file azure storage container name"
}

variable "key" {
  type        = string
  description = "Terraform backend state file azure storage key"
}

# Azure resource variables with sensible defaults
variable "resource_group_location" {
  type        = string
  default     = "uksouth"
  description = "The location of the resource group"
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "The prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}
