variable "azure_region" {
  description = "La región de Azure donde se desplegarán los recursos."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "El nombre del grupo de recursos de Azure."
  type        = string
}

variable "api_app_name" {
  description = "El nombre de la aplicación de la API."
  type        = string
}

variable "database_name" {
  description = "El nombre de la base de datos PostgreSQL."
  type        = string
}

variable "database_username" {
  description = "El nombre de usuario para la base de datos PostgreSQL."
  type        = string
}

variable "database_password" {
  description = "La contraseña para el usuario de la base de datos PostgreSQL."
  type        = string
  sensitive   = true
}

variable "app_service_plan_name" {
  description = "El nombre del plan de servicio de la aplicación."
  type        = string
}

variable "sku" {
  description = "El SKU para el plan de servicio de la aplicación."
  type        = string
  default     = "S1"
}