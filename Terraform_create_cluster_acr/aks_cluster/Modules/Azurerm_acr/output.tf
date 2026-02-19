output "acr_id" {
  value = { for k, v in azurerm_container_registry.acrblockfeb :
   k => v.id }
}