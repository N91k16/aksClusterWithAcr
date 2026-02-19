variable "acrc" {
  description = "A map of Azure Container Registries to create"
  type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    sku                  = string
    admin_enabled        = bool
  }))
}