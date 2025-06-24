Feature: Listado general de perfiles

  Como desarrollador del microservicio ProfileService, quiero exponer el endpoint GET /api/v1/profiles para listar todos los perfiles creados en la aplicación.

  Scenario: Existen perfiles
    Given hay perfiles en el sistema
    When se consulta el endpoint
    Then debe devolverse una lista con sus datos

  Scenario: No existen perfiles
    Given no hay perfiles registrados
    When se consulta
    Then debe devolverse una lista vacía
