Feature: Visualización de vehículos disponibles por tipo

  Como desarrollador del microservicio quiero permitir la búsqueda de vehículos por tipo mediante GET /api/v1/vehicles/type/{type} para que los usuarios filtren según sus necesidades.

  Scenario: Tipo válido con resultados
    Given un usuario busca vehículos del tipo "bicicleta"
    When hace la consulta al endpoint
    Then debe devolverse una lista de vehículos con ese tipo

  Scenario: Tipo sin coincidencias
    Given el tipo ingresado no tiene vehículos disponibles
    When se hace la consulta
    Then debe devolverse una lista vacía y estado 200 OK
