Feature: Historial de Vehículos

Scenario: Visualización del historial de vehículos en EcoMovil
    Given el usuario está autenticado y se encuentra en su página de perfil en EcoMovil
    When el usuario accede a la sección "Historial de Vehículos" desde el menú
    Then el sistema muestra una lista con el historial de vehículos del usuario