Feature: Consulta de reserva por ID

  Como desarrollador del microservicio ReservationService, quiero permitir consultar una reserva específica usando GET /api/v1/reservations/id/{reservationId} para mostrar su información detallada.

  Scenario: Reserva encontrada
    Given el ID corresponde a una reserva existente
    When se hace la consulta
    Then se debe devolver la reserva solicitada

  Scenario: Reserva no encontrada
    Given no existe ninguna reserva con ese ID
    When se hace la consulta
    Then debe devolverse un error 404 Not Found
