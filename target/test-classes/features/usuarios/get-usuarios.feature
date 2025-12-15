Feature: Listar todos los usuarios

  Background:
    * url baseUrl

  Scenario: Listar usuarios existentes
    Given path 'usuarios'
    When method get
    Then status 200
    And match response.size > 0
