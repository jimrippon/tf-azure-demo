resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false

#  lifecycle {
#    prevent_destroy = true
#  }
}

resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate"
  location = "uksouth"

#  lifecycle {
#    prevent_destroy = true
#  }
}

resource "azurerm_storage_account" "tfstate" {
  name                            = "tfstate${random_string.resource_code.result}"
  resource_group_name             = azurerm_resource_group.tfstate.name
  location                        = azurerm_resource_group.tfstate.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    environment = var.envname
  }

#  lifecycle {
#    prevent_destroy = true
#  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"

#  lifecycle {
#    prevent_destroy = true
#  }
}
