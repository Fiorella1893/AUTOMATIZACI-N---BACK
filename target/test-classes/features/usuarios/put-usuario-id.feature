Feature: Actualizar usuario existente

  Background:
    * url baseUrl
    # Creamos un usuario primero
    * def newUser = { nome: 'Fiorella Izquierdo', email: 'fiorella'+karate.randomInt(1000)+'@mail.com', password: '123456', administrador: 'true' }
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id

  Scenario: Actualizar usuario existente
    * def updatedUser = { nome: 'Fiorella Izquierdo', email: 'fiorella'+karate.randomInt(1000)+'@mail.com', password: '654321', administrador: 'true' }
    Given path 'usuarios', userId
    And request updatedUser
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'
