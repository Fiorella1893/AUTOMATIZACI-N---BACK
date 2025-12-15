Feature: Usuarios - Crear usuario

Background:
    * url 'https://serverest.dev'

Scenario: Crear usuario exitosamente
    Given path '/usuarios'

    * def random = Math.floor(Math.random() * 100000)
    * def email = 'fiorella.izquierdo' + random + '@mail.com'

    And request
    """
    {
      "nome": "Fiorella Izquierdo",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """

    When method post
    Then status 201
