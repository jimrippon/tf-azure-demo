# Terraform to provision and manage Azure Container App demo app

This repo will create an Azure Container App, within a Resource Group, with log analytics connected.

Terraform shared state is intended to be stored within Azure Storage, provisioning of this is achieved with the terraform in the `bootstrap` folder.

Once bootstrapping is complete, update the appropriate values and create resources with terraform in the `deployment` folder.
