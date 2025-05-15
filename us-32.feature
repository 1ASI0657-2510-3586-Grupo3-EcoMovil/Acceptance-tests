Feature: Internacionalización

Scenario: Cambiar idioma de la aplicación
    Given el usuario está en cualquier página de la aplicación
    When selecciona un idioma desde el menú
    Then el sistema cambia el idioma de la aplicación
    And todos los textos de la interfaz se actualizan al idioma seleccionado
