Feature: Video Acerca del Producto

Scenario: Visualizar video de "Acerca del Producto"
    Given el usuario está en la página "Acerca del Producto"
    When visualiza la sección de video
    Then el sistema muestra el video con controles visibles
    And el video se reproduce al hacer clic en "play"
    And el video tiene una duración máxima de 3 minutos
