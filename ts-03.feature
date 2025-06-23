Feature: Autenticación de usuarios con credenciales

  Como desarrollador del microservicio quiero permitir a los usuarios iniciar sesión utilizando el endpoint POST /api/v1/authentication/sign-in para que puedan acceder a las funciones de la plataforma.

  Scenario: Inicio de sesión exitoso
    Given el usuario proporciona credenciales correctas
    When hace la petición al endpoint sign-in
    Then se debe generar y devolver un token JWT

  Scenario: Credenciales inválidas
    Given el usuario proporciona datos incorrectos
    When intenta iniciar sesión
    Then se debe devolver una respuesta 401 Unauthorized
