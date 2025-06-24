Feature: Consulta de plan tarifario por ID

  Como desarrollador del microservicio PlanService, quiero exponer el endpoint GET /api/v1/plan2/id/{id} para consultar la información de un plan específico.

  Scenario: Plan encontrado
    Given el ID corresponde a un plan existente
    When se realiza la consulta
    Then se debe devolver su información detallada

  Scenario: Plan no encontrado
    Given el ID no existe
    When se realiza la consulta
    Then debe devolverse un error 404 Not Found
