Feature: Crear nuevo plan tarifario

  Como desarrollador del microservicio quiero permitir la creación de planes tarifarios mediante POST /api/v1/plan2 para asociarlos a vehículos o servicios.

  Scenario: Creación exitosa
    Given el administrador envía los datos del plan
    When se llama al endpoint con datos válidos
    Then debe almacenarse el nuevo plan y devolverse con un ID

  Scenario: Creación fallida
    Given se omiten campos requeridos
    When se intenta crear el plan
    Then debe devolverse un error 400 Bad Request
