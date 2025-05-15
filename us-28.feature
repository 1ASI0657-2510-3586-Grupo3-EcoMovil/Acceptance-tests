Feature: Actualizar Perfil

Scenario: Actualizar la información personal del perfil
    Given el usuario ha iniciado sesión y accede a su perfil
    When modifica su información personal y guarda los cambios
    Then la información se almacena correctamente
    And el sistema muestra un mensaje de confirmación de actualización exitosa
