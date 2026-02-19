output "aks_kubelet_object_ids" {
    value = {
        for aks_key, aks_value in azurerm_kubernetes_cluster.aksblockfeb:
        aks_key => azurerm_kubernetes_cluster.aksblockfeb[aks_key].kubelet_identity[0].object_id
    }
    }