Feature: Eliminar usuario existente

  Background:
    * url baseUrl
    # Creamos un usuario primero
    * def newUser = { nome: 'Fiorella Izquierdo', email: 'fiorella'+karate.randomInt(1000)+'@mail.com', password: '123456', administrador: 'true' }
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id

  Scenario: Eliminar usuario existente
    Given path 'usuarios', userId
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'
