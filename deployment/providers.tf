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
  ## Uncomment the below to use azure storage for backend state
  #backend "azurerm" {
  #}
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}
