variable "aksmy_clusters" {
  type = map(object({
    location    = string
    dns_prefix  = string
    node_count  = number
    vm_size     = string
    environment = string
  }))
}
variable "rg_clusters" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}
