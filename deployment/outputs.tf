output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "demo_app_address" {
  value = "https://${azurerm_container_app.demo.ingress[0].fqdn}"
}
