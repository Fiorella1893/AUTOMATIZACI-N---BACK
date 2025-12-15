Feature: Registrar un nuevo usuario

  Background:
    * url baseUrl

  Scenario: Registro exitoso de usuario
    * def newUser = { nome: 'Fiorella Izquierdo', email: 'fiorella'+karate.randomInt(1000)+'@mail.com', password: '123456', administrador: 'true' }
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
