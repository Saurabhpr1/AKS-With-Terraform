module "resource" {
  source = "../azurerm-resource"
  rg_clusters = {
    for key, value in var.rg_clusters :
    key => value
    if key == "devaks"
  }
}

module "aks" {
  source     = "../azurerm-aks"
  depends_on = [module.resource]
  aksmy_clusters = {
    for key, value in var.aksmy_clusters :
    key => value
    if value.environment == "dev"
  }
  rg_names = module.resource.rg_names
}