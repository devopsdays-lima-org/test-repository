provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "microservice-rg"
  location = "East US"
}

module "api" {
  source              = "./modules/api"
  resource_group_name = azurerm_resource_group.rg.name
}

module "database" {
  source              = "./modules/database"
  resource_group_name = azurerm_resource_group.rg.name
}