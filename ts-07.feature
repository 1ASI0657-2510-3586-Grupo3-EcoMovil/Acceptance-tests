Feature: Actualización del perfil del usuario

  Como desarrollador del microservicio quiero permitir la edición del perfil mediante PUT /api/v1/profiles para que los usuarios puedan actualizar su información personal.

  Scenario: Actualización exitosa
    Given el usuario ha iniciado sesión
    And proporciona información válida para actualizar su perfil
    When se realiza una petición PUT al endpoint /api/v1/profiles
    Then el sistema debe guardar los cambios
    And debe devolverse el perfil actualizado con estado 200 OK

  Scenario: Datos inválidos
    Given el usuario ha iniciado sesión
    And proporciona datos incompletos o con formato incorrecto
    When se realiza una petición PUT al endpoint /api/v1/profiles
    Then el sistema debe responder con error 400 Bad Request
    And debe mostrarse un mensaje de validación de error
