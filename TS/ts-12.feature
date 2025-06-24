Feature: Actualización de estado de una reserva

  Como desarrollador del microservicio quiero actualizar el estado de una reserva usando PUT /api/v1/reservations/{reservationId}/status para gestionar su confirmación, cancelación o finalización.

  Scenario: Actualización válida
    Given el ID de reserva existe y el nuevo estado es válido
    When se actualiza el estado
    Then debe guardarse y reflejarse el nuevo estado en la respuesta

  Scenario: Estado inválido o reserva no encontrada
    Given el ID de reserva no existe o el estado enviado no es reconocido
    When se hace la petición
    Then debe devolverse un error 400 o 404 según corresponda
