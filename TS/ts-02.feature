Feature: Registro de nuevos usuarios mediante API

  Como desarrollador del microservicio quiero implementar el endpoint de registro (POST /api/v1/authentication/sign-up) para permitir que los nuevos usuarios creen sus cuentas en el sistema.

  Scenario: Registro exitoso
    Given un usuario completa todos los campos requeridos
    When realiza una solicitud POST al endpoint de sign-up con datos válidos
    Then se debe crear un nuevo usuario y devolver una respuesta con estado 201 Created

  Scenario: Registro con datos inválidos
    Given un usuario envía campos incompletos o inválidos
    When se realiza la solicitud al endpoint
    Then se debe devolver un error 400 Bad Request con un mensaje de validación
