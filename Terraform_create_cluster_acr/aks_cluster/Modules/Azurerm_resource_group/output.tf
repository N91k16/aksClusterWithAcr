output "resource_group_names" {
  value = { for k, rg in azurerm_resource_group.rgblockfeb : k => rg.name }
  description = "Map of resource group names"
}

output "resource_group_locations" {
  value = { for k, rg in azurerm_resource_group.rgblockfeb : k => rg.location }
  description = "Map of resource group locations"
}
