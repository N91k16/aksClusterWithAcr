rgp = {
  rg1 = {
    name     = "dev_rg"
    location = "australia East"
  }
}


acrp = {
  acr1 = {
    name                 = "dimagrakh"
    resource_group_name  = "dev_rg"
    location             = "australia East"
    sku                  = "Premium"
    admin_enabled        = true
  }
}




aksp = {
  "aks1" = {
    name = "devCluster"
    location = "australia East"
    dns_prefix = "my-aks-dns"
    rg_name = "dev_rg"
  }
}





# No variables needed for acr_pull module

