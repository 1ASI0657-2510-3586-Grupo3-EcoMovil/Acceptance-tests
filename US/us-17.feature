Feature: Inicio de sesión en EcoMovil

Scenario: Inicio de sesión en EcoMovil
Given el usuario está en la página de inicio de sesión
When ingresa correo y contraseña válidos y hace clic en "Iniciar sesión"
Then el usuario debe ser autenticado correctamente