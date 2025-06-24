Feature: Creación de cuenta en EcoMovil

Scenario: Creación de cuenta en EcoMovil
Given el usuario está en la página de registro
When completa RUC, correo, nombre y contraseña y hace clic en "Registrar"
Then se debe crear su cuenta y redirigir a la página de inicio