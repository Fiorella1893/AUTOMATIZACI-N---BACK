# Automatización API Usuarios – ServeRest

## Objetivo
El objetivo de este proyecto es crear pruebas automatizadas para la API de Usuarios de ServeRest, con el fin de validar que las operaciones principales funcionen correctamente.

## Descripción
En este proyecto se automatizaron los endpoints de la API de usuarios utilizando Karate DSL.  
Se cubren los escenarios principales para la gestión de usuarios, validando tanto respuestas exitosas como algunos casos de error.

## Tecnologías utilizadas
- Java 17  
- Maven  
- Karate DSL  
- JUnit 5  

## Estructura del proyecto
- features/usuarios: contiene los escenarios de prueba para cada endpoint  
- features/utils: contiene utilidades para generar datos de prueba  
- schemas: validación de esquemas JSON  
- UserTest.java: clase que ejecuta los tests  

## Casos automatizados
- Obtener la lista de usuarios (GET /usuarios)  
- Crear un usuario nuevo (POST /usuarios)  
- Buscar un usuario por ID (GET /usuarios/{id})  
- Actualizar un usuario existente (PUT /usuarios/{id})  
- Eliminar un usuario (DELETE /usuarios/{id})  

## Ejecución de las pruebas
Para ejecutar las pruebas, ubicarse en la raíz del proyecto y ejecutar el siguiente comando:

```bash
mvn clean test

AUTO: 
Fiorella 