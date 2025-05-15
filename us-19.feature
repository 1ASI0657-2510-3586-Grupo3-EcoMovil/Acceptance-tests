Feature: Confirmación de pago exitoso

Scenario: Confirmación de “Pago exitoso”
Given el usuario ha completado el pago
When el pago se procesa correctamente
Then será redirigido a una página con el mensaje de “Pago exitoso”