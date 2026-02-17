rg_clusters = {
  "devaks" = {
    resource_group_name = "dev-rg"
    location            = "centralindia"
  }
  "productionaks" = {
    resource_group_name = "prod-rg"
    location            = "centralindia"
  }
}
aksmy_clusters = {
  "devaks" = {
    location    = "centralindia"
    dns_prefix  = "devaks"
    node_count  = 1
    vm_size     = "Standard_D2s_v5"
    environment = "dev"

  }
  "productionaks" = {
    location    = "centralindia"
    dns_prefix  = "prodaks"
    node_count  = 2
    vm_size     = "Standard_D2s_v5"
    environment = "production"
  }
}