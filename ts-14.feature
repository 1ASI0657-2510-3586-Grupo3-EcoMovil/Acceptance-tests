Feature: Consulta de usuario por ID

  Como desarrollador del microservicio quiero permitir consultar los datos de un usuario específico usando GET /api/v1/users/{userId} para mostrar o editar su información.

  Scenario: Usuario encontrado
    Given se proporciona un ID válido
    When se realiza la solicitud
    Then debe devolverse la información del usuario correspondiente

  Scenario: Usuario no encontrado
    Given el ID no corresponde a ningún usuario
    When se hace la petición
    Then debe devolverse un error 404 Not Found
