Feature: Eliminar usuario existente

  Background:
    * url baseUrl

  Scenario: Eliminar usuario por ID
    # Cambia 1 por el ID que exista
    Given path 'usuarios', 1
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'
