Feature: Notificación de Pago

Scenario: Recibir notificación de pago exitoso
    Given el usuario ha realizado un pago en la plataforma
    When el sistema procesa exitosamente la transacción
    Then el usuario recibe una notificación en la app
    And recibe un correo electrónico con los detalles de la transacción
