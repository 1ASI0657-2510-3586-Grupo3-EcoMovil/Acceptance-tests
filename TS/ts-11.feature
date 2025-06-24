Feature: Consulta de roles disponibles

  Como desarrollador del microservicio quiero consultar todos los roles registrados mediante GET /api/v1/roles para usarlos en asignación de permisos o visualización en interfaces.

  Scenario: Consulta exitosa
    Given se realiza una petición GET al endpoint
    When hay roles en el sistema
    Then debe devolverse una lista de objetos de rol

  Scenario: Lista vacía
    Given no existen roles registrados
    When se realiza la petición
    Then se debe devolver una lista vacía y código 200 OK
