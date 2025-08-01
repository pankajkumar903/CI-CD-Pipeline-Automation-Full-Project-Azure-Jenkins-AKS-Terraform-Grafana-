provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "ci-cd-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "ci-cd-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "ci-cd-aks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "cicdacrregistry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}
