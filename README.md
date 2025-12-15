# Proyecto de Automatización API ServeRest - Usuarios

## Requisitos
- Java 11+
- Maven
- Karate DSL

## Ejecutar tests
```bash
mvn test -Dkarate.options="--tags @usuarios"
```

## Estructura del proyecto
- `features/usuarios` → Feature files de endpoints
- `data/` → Datos de prueba
- `schemas/` → Validaciones JSON
- `features/utils/` → Helpers y generación de datos

## Estrategia de automatización
- Separación de feature files por endpoint.
- Escenarios positivos y negativos.
- Validación de esquemas JSON.
- Reutilización de datos y generación de datos aleatorios.
- Reports automáticos de ejecución.
