variable "aksc" {
  description = "AKS cluster configurations"
  type = map(object({
    name = string
    location = string
    dns_prefix = string
    rg_name = string
  }))
}