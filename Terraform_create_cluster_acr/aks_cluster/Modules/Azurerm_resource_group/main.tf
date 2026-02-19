resource "azurerm_resource_group" "rgblockfeb" {
    for_each = var.rgc
  name     = each.value.name
  location = each.value.location
}