#!/bin/bash

echo "🛠️  Creando estructura de carpetas y archivos..."

mkdir -p config models repositories services handlers utils logs

# Crear archivos con plantillas básicas
touch config/db.go
echo '// config/db.go - Conexión a la base de datos' > config/db.go

touch models/task.go
echo '// models/task.go - Modelo de datos Task' > models/task.go

touch repositories/task_repository.go
echo '// repositories/task_repository.go - Funciones de acceso a datos' > repositories/task_repository.go

touch services/task_service.go
echo '// services/task_service.go - Lógica de negocio para tareas' > services/task_service.go

touch handlers/task_handler.go
echo '// handlers/task_handler.go - Endpoints HTTP para tareas' > handlers/task_handler.go

touch utils/pagination.go
echo '// utils/pagination.go - Helpers para paginación y filtros' > utils/pagination.go

touch logs/logger.go
echo '// logs/logger.go - Logger personalizado para el proyecto' > logs/logger.go

# .gitignore básico
echo "📝 Generando .gitignore..."
cat <<EOL > .gitignore
# Go
bin/
*.exe
*.out
*.test

# Archivos del sistema y editores
.DS_Store
*.log
.env
.idea/
.vscode/
EOL

# README básico
echo "📘 Generando README.md..."
cat <<EOL > README.md
# Task CRUD API (Go)

Una API REST para gestionar tareas, desarrollada en Go con Gin y GORM.

## 📁 Estructura
- \`models/\`: definición de entidades
- \`handlers/\`: controladores HTTP
- \`services/\`: lógica de negocio
- \`repositories/\`: acceso a datos
- \`config/\`: configuración de base de datos
- \`utils/\`: utilidades como paginación
- \`logs/\`: sistema de logging

## 🚀 Cómo ejecutar
```bash
go mod tidy
go run main.go
