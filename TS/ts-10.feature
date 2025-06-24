Feature: Eliminación de plan por ID

  Como desarrollador del microservicio quiero permitir eliminar un plan por su ID usando DELETE /api/v1/plan2/id/{id} para mantener actualizada la base de datos de tarifas.

  Scenario: Eliminación exitosa
    Given el ID del plan existe
    When se llama al endpoint de eliminación
    Then el plan debe ser eliminado correctamente y devolverse una respuesta 204 No Content

  Scenario: Plan no encontrado
    Given el ID no corresponde a ningún plan
    When se hace la solicitud
    Then debe devolverse un error 404 Not Found
