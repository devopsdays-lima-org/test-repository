# Microservicio de Análisis de Correos Maliciosos

Este proyecto es un microservicio desarrollado en JavaScript con Node.js que expone una API para analizar correos electrónicos y determinar si son maliciosos. El microservicio utiliza Docker para la contenedorización y Terraform para la infraestructura en Azure. Además, se implementa un flujo de trabajo de CI/CD utilizando GitHub Actions.

## Estructura del Proyecto

```
microservice-project
├── src
│   ├── app.js                     # Punto de entrada de la aplicación
│   ├── controllers
│   │   └── emailController.js      # Controlador para manejar las solicitudes de análisis de correos
│   ├── routes
│   │   └── emailRoutes.js          # Rutas de la API
│   ├── services
│   │   └── emailService.js         # Lógica de negocio para el análisis de correos
│   └── utils
│       └── emailUtils.js           # Funciones utilitarias para el procesamiento de correos
├── Dockerfile                       # Configuración del contenedor del microservicio
├── docker-compose.yml               # Configuración de Docker Compose para el microservicio y la base de datos
├── terraform
│   ├── main.tf                     # Archivo principal de Terraform
│   ├── variables.tf                # Definición de variables para Terraform
│   ├── outputs.tf                  # Salidas de Terraform
│   └── modules
│       ├── api
│       │   ├── main.tf             # Recursos específicos para la API
│       │   ├── variables.tf        # Variables para el módulo de la API
│       │   └── outputs.tf          # Salidas para el módulo de la API
│       └── database
│           ├── main.tf             # Recursos específicos para la base de datos
│           ├── variables.tf        # Variables para el módulo de la base de datos
│           └── outputs.tf          # Salidas para el módulo de la base de datos
├── .github
│   └── workflows
│       └── ci-cd.yml               # Flujo de trabajo de CI/CD con GitHub Actions
├── package.json                     # Configuración del proyecto para npm
└── README.md                        # Documentación del proyecto
```

## Requisitos

- Node.js
- Docker
- Terraform
- Cuenta de Azure
- GitHub

## Instalación

1. Clona el repositorio:
   ```
   git clone <URL_DEL_REPOSITORIO>
   cd microservice-project
   ```

2. Instala las dependencias:
   ```
   npm install
   ```

3. Configura las variables de entorno necesarias para la conexión a la base de datos y otros parámetros.

## Ejecución Local

Para ejecutar el microservicio localmente, utiliza Docker Compose:

```
docker-compose up
```

Esto levantará el microservicio y la base de datos PostgreSQL.

## Despliegue en Azure

Para desplegar la infraestructura en Azure, navega al directorio `terraform` y ejecuta:

```
terraform init
terraform apply
```

Esto creará los recursos necesarios en Azure.

## CI/CD

El flujo de trabajo de CI/CD está configurado en `.github/workflows/ci-cd.yml`. Este flujo de trabajo se activará en cada push a la rama principal, construyendo y desplegando automáticamente el microservicio.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o envía un pull request para discutir cambios.

## Licencia

Este proyecto está bajo la Licencia MIT.