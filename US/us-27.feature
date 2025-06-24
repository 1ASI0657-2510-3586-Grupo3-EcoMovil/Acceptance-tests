Feature: Crear Discusión

Scenario: Crear una nueva discusión
    Given el usuario ha iniciado sesión y está en la sección de discusiones
    When crea una nueva discusión con título y mensaje y presiona "Publicar"
    Then la discusión se crea y es visible para otros usuarios
    And otros usuarios pueden responder a la discusión
