variable "rgp" {
  type = map(object({
    name     = string
    location = string
  }))
}


variable "acrp" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    sku                  = string
    admin_enabled        = bool
  }))
  
}


variable "aksp" {
  type = map(object({
    name = string
    location = string
    dns_prefix = string
    rg_name = string
  }))
}


# No variables needed for acr_pull module