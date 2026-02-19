module "rgmodule" {
  source = "../Modules/Azurerm_resource_group"
  rgc = var.rgp
}



module "acrmodule" {
  depends_on = [ module.rgmodule ]
  source = "../Modules/Azurerm_acr"
  acrc = var.acrp
}

module "aksmodule" {
  depends_on = [ module.rgmodule ]
  source = "../Modules/Azurerm_Aks"
  aksc = var.aksp
}




module "acrpullmodule" {
  depends_on = [ module.acrmodule, module.aksmodule ]
  source = "../Modules/acr_pull"
  acr_id = module.acrmodule.acr_id["acr1"]
  aks_kubelet_object_id = module.aksmodule.aks_kubelet_object_ids["aks1"]
}

