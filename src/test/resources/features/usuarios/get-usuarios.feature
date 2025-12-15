Feature: Listar todos los usuarios

  Background:
    * url baseUrl

  Scenario: Obtener lista de usuarios
    Given path 'usuarios'
    When method get
    Then status 200
    And assert response.size > 0
