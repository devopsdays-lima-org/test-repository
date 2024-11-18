output "database_connection_string" {
  value = azurerm_postgresql_server.example.fully_qualified_domain_name
}

output "database_name" {
  value = azurerm_postgresql_database.example.name
}

output "database_admin_username" {
  value = azurerm_postgresql_server.example.administrator_login
}