Feature: Listado general de todas las reservas

  Como desarrollador del microservicio ReservationService, quiero listar todas las reservas mediante GET /api/v1/reservations/all para fines administrativos o de monitoreo.

  Scenario: Existen reservas
    Given hay reservas en el sistema
    When se hace la consulta
    Then debe devolverse la lista completa de reservas

  Scenario: No hay reservas
    Given no se ha creado ninguna reserva
    When se hace la consulta
    Then debe devolverse una lista vacía con código 200 OK
