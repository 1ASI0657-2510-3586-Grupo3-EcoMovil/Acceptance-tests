Feature: Agregar vehículo desde el menú

Scenario: Agregar vehículo
Given el usuario está autenticado y en el menú
When selecciona "Agregar", completa el formulario y hace clic en "Publicar Vehículo"
Then el vehículo debe publicarse exitosamente y mostrarse en su lista