Feature: Listado de vehículos publicados por el usuario

  Como desarrollador del microservicio VehicleService, quiero exponer el endpoint GET /api/v1/vehicles/my-vehicles para mostrar al usuario los vehículos que ha registrado.

  Scenario: El usuario tiene vehículos registrados
    Given el usuario tiene vehículos registrados
    When se consulta el endpoint
    Then debe devolverse la lista correspondiente

  Scenario: El usuario no tiene vehículos registrados
    Given el usuario no ha registrado vehículos
    When se consulta el endpoint
    Then debe devolverse una lista vacía
