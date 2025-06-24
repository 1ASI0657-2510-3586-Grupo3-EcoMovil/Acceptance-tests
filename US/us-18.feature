Feature: Selección de plan en EcoMovil

Scenario: Selección del plan
Given el usuario está en la página de planes
When hace clic en "Elija un plan" para un plan
Then será redirigido a la página de checkout para ese plan