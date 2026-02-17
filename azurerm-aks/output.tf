output "cluster_id" {
    value = {
        for key, value in azurerm_kubernetes_cluster.aksdemo : key => value.id
    }
  
}