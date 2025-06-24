Feature: Visualización de la sección "Acerca de"

Scenario: Visualización de la Sección de Acerca de
Given el usuario se encuentra en la landing page
When se carga la página
Then la sección "Acerca de" debe ser visible con historia y misión de EcoMovil