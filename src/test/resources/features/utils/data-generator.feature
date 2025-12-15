Feature: Generador de datos de prueba

  Scenario: Crear usuario aleatorio
    * def randomInt = karate.randomInt(1000)
    * def newUser = { nome: 'Usuario '+randomInt, email: 'user'+randomInt+'@mail.com', password: '123456', administrador: 'true' }
    * print newUser