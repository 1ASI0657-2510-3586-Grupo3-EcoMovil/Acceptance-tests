Feature: Consulta de vehículo por ID

  Como desarrollador del microservicio VehicleService, quiero exponer el endpoint GET /api/v1/vehicles/{vehicleId} para obtener los detalles de un vehículo específico.

  Scenario: Vehículo encontrado
    Given el ID corresponde a un vehículo existente
    When se realiza la consulta
    Then se debe devolver la información detallada del vehículo

  Scenario: Vehículo no encontrado
    Given el ID consultado no corresponde a ningún vehículo
    When se realiza la consulta
    Then debe devolverse un error 404 Not Found
