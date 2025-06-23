Feature: Listado de planes tarifarios

  Como desarrollador del microservicio PlanService, quiero exponer el endpoint GET /api/v1/plan2 para listar todos los planes tarifarios existentes.

  Scenario: Existen planes registrados
    Given hay planes en el sistema
    When se realiza la consulta
    Then debe devolverse una lista con sus datos

  Scenario: No existen planes
    Given no se han creado planes
    When se consulta
    Then debe devolverse una lista vacía
