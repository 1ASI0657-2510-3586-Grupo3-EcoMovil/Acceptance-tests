Feature: Creación de una reserva para un vehículo

  Como desarrollador del microservicio quiero permitir a los usuarios realizar una reserva mediante el endpoint POST /api/v1/reservations para gestionar los alquileres de vehículos.

  Scenario: Reserva válida
    Given el usuario ha seleccionado un vehículo y proporciona datos válidos
    When se envía la solicitud de reserva
    Then se debe guardar la reserva y devolver el objeto con estado 201 Created

  Scenario: Vehículo no disponible
    Given el vehículo ya está reservado para la fecha solicitada
    When se realiza la petición
    Then se debe devolver un error 409 Conflict
