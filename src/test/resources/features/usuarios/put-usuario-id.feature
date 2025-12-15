Feature: Actualizar usuario existente

  Background:
    * url baseUrl

  Scenario: Actualizar datos de un usuario
    * def randomNum = karate.randomInt(1000)
    * def updatedUser =
      """
      {
        "nome": "Fiorella Izquierdo",
        "email": "fiuz1896_" + randomNum + "@mail.com",
        "password": "654321",
        "administrador": "true"
      }
      """
    Given path 'usuarios', 1
    And request updatedUser
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'
