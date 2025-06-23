Feature: Visualización de todos los usuarios

  Como desarrollador del microservicio quiero permitir la visualización de todos los usuarios mediante GET /api/v1/users para fines administrativos o de monitoreo del sistema.

  Scenario: Consulta exitosa
    Given se realiza una solicitud GET
    When existen usuarios registrados
    Then debe devolverse una lista con sus datos básicos

  Scenario: Sin usuarios registrados
    Given no existen usuarios en la base de datos
    When se realiza la petición
    Then debe devolverse una lista vacía con código 200 OK
