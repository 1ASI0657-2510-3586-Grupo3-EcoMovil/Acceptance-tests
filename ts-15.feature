Feature: Consulta de reservas por perfil

  Como desarrollador del microservicio ReservationService, quiero permitir la consulta de reservas por perfil mediante GET /api/v1/reservations/profile/{profileId} para que cada usuario visualice sus reservas.

  Scenario: Perfil con reservas
    Given existe un perfil con reservas
    When se consulta el endpoint
    Then debe devolverse la lista de reservas asociadas a ese perfil

  Scenario: Perfil sin reservas
    Given el perfil no tiene reservas
    When se consulta el endpoint
    Then debe devolverse una lista vacía y código 200 OK
