Feature: Creación de un nuevo perfil de usuario

  Como desarrollador del microservicio ProfileService, quiero permitir la creación de un nuevo perfil mediante el endpoint POST /api/v1/profiles.

  Scenario: Creación exitosa
    Given el usuario envía datos válidos
    When se realiza la solicitud
    Then el sistema debe registrar el perfil y devolverlo

  Scenario: Datos inválidos
    Given se envían datos incompletos o mal formateados
    When se realiza la solicitud
    Then debe devolverse un error 400 Bad Request
