Feature: Publicación de un nuevo vehículo

  Como desarrollador del microservicio quiero permitir a los usuarios registrar un nuevo vehículo usando POST /api/v1/vehicles para que puedan ofrecerlo para alquiler.

  Scenario: Registro válido
    Given el usuario autenticado envía los datos del vehículo
    When accede al endpoint de registro de vehículos
    Then el vehículo debe almacenarse y devolverse con un ID único

  Scenario: Datos incompletos o inválidos
    Given el usuario no envía todos los campos requeridos
    When se intenta guardar el vehículo
    Then el sistema debe devolver un error 400 Bad Request
