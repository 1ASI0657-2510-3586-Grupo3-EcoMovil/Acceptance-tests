Feature: Obtener perfil actual autenticado

  Como desarrollador del microservicio quiero obtener los datos del perfil autenticado usando GET /api/v1/profiles/me para mostrar su información personal.

  Scenario: Token válido
    Given el usuario está autenticado
    When accede al endpoint /api/v1/profiles/me
    Then debe devolverse su información de perfil con estado 200 OK

  Scenario: Token inválido o inexistente
    Given el usuario no proporciona un token válido
    When accede al endpoint
    Then debe devolverse un error 401 Unauthorized
