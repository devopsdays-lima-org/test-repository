resource "azurerm_postgresql_server" "example" {
  name                         = var.postgresql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "11"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  sku {
    name     = "B_Gen5_1"
    tier     = "Basic"
    capacity = 1
  }
  storage_mb = 5120
  ssl_enforcement_enabled = true
}

resource "azurerm_postgresql_database" "example" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}

output "postgresql_server_name" {
  value = azurerm_postgresql_server.example.name
}

output "postgresql_database_name" {
  value = azurerm_postgresql_database.example.name
}