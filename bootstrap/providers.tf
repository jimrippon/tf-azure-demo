terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.17.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}
