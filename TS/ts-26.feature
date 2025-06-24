Feature: Eliminación de una reserva

  Como desarrollador del microservicio ReservationService, quiero permitir eliminar una reserva usando DELETE /api/v1/reservations/{reservationId}.

  Scenario: Eliminación exitosa
    Given la reserva existe
    When se envía la solicitud
    Then debe eliminarse y devolverse estado 204 No Content

  Scenario: Reserva no encontrada
    Given el ID no corresponde a ninguna reserva
    When se envía la solicitud
    Then debe devolverse un error 404 Not Found
