resource "azurerm_kubernetes_cluster" "aksdemo" {
    for_each =var.aksmy_clusters
    name                = each.key
    location            = each.value.location
    resource_group_name = var.rg_names[each.key]
    dns_prefix          = each.value.dns_prefix
    default_node_pool {
        name       = "testnode"
        node_count = each.value.node_count
        vm_size    = each.value.vm_size
    }
    identity {
      type = "SystemAssigned"
    }
   tags = {
    environment = each.value.environment
   }
  
}