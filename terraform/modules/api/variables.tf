variable "api_name" {
  description = "Nombre del servicio de la API"
  type        = string
}

variable "api_location" {
  description = "Ubicación donde se desplegará el servicio de la API"
  type        = string
}

variable "api_sku" {
  description = "SKU del servicio de la API"
  type        = string
  default     = "B1"
}

variable "api_port" {
  description = "Puerto en el que se ejecutará la API"
  type        = number
  default     = 3000
}

variable "database_connection_string" {
  description = "Cadena de conexión a la base de datos PostgreSQL"
  type        = string
}