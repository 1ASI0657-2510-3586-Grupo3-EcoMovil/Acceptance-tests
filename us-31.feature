Feature: Video Acerca del Equipo

Scenario: Visualizar video de "Acerca del Equipo"
    Given el usuario está en la página "Acerca del Equipo"
    When visualiza la sección de video
    Then el sistema muestra el video con controles visibles
    And el video se reproduce al hacer clic en "play"
    And el video tiene una duración máxima de 3 minutos
