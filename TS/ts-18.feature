Feature: Listado general de vehículos

  Como desarrollador del microservicio VehicleService, quiero exponer el endpoint GET /api/v1/vehicles para listar todos los vehículos disponibles en la plataforma.

  Scenario: Existen vehículos
    Given hay vehículos registrados
    When se consulta el endpoint
    Then debe devolverse una lista con los datos de cada vehículo

  Scenario: No hay vehículos
    Given no hay vehículos registrados
    When se consulta el endpoint
    Then debe devolverse una lista vacía y estado 200 OK
