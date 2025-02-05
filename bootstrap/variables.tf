variable "envname" {
  type        = string
  description = "Name of the environment we are deploying (from backend-config)"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID for Azure (from `az account show`)"
}
