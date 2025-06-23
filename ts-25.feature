Feature: Actualización de datos de una reserva

  Como desarrollador del microservicio ReservationService, quiero permitir la actualización de los datos de una reserva mediante PUT /api/v1/reservations/{reservationId}.

  Scenario: Datos válidos
    Given la reserva existe y los datos son válidos
    When se actualiza
    Then los cambios deben guardarse y devolverse con los datos actualizados

  Scenario: Datos inválidos o reserva inexistente
    Given la reserva no existe o los datos son incorrectos
    When se realiza la petición
    Then debe devolverse un error 400 o 404
