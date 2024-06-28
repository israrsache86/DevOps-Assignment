resource "azurerm_resource_group" "aks" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {

  name = var.cluster_name
  location = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix = var.dns_prefix

  default_node_pool {
    name = var.node_name
    node_count = var.node_count
    vm_size = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

}
