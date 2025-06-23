Feature: Endpoint raíz operativo

  Como desarrollador quiero asegurarme de que el endpoint raíz / funcione correctamente para confirmar que el backend está corriendo.

  Scenario: Respuesta exitosa
    Given el servidor está activo
    When se hace una petición al endpoint /
    Then debe devolverse un mensaje de bienvenida o confirmación con código 200 OK

  Scenario: Error del servidor
    Given ocurre una excepción inesperada
    When se accede al endpoint
    Then debe devolverse un error 500 Internal Server Error o mensaje apropiado
