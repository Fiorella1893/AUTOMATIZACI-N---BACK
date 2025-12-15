Feature: Buscar usuario por ID

  Background:
    * url baseUrl

  Scenario: Buscar usuario existente
    # Cambia 1 por el ID que exista
    Given path 'usuarios', 1
    When method get
    Then status 200
    And assert response.id == 1
