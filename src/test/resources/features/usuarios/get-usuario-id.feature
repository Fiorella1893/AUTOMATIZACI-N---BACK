Feature: Buscar usuario por ID

  Background:
    * url baseUrl
    # Creamos un usuario primero
    * def newUser = { nome: 'Fiorella Izquierdo', email: 'fiorella'+karate.randomInt(1000)+'@mail.com', password: '123456', administrador: 'true' }
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id

  Scenario: Buscar usuario existente
    Given path 'usuarios', userId
    When method get
    Then status 200
    And match response._id == userId
