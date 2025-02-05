# Bootstrapping resources for Azure Terraform State management

This folder contains terraform to provision Azure resources required for using Azure Storage to hold Terraform State files and handle locking.

## Creating resources

You will need to have configured the Azure CLI and provide a subscription ID and environment name to terraform.  You can do this with tfvars or from the commandline:

```
terraform plan -out plan.out -var "envname=dev" -var "subscription_id=$(az account show | jq -r .id)"
```

Review the plan output from above and address any errors or notifications that you receive.  Once the plan is correct you can implement the changes by applying:

```
terraform apply plan.out
```
