output "myacr_id" {
    value = module.acrmodule.acr_id
}

output "myaks_kubelet_object_ids" {
    value = module.aksmodule.aks_kubelet_object_ids
}