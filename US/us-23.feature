Feature: Foro de Contacto

Scenario: Visualización del Foro de Contacto en EcoMovil
    Given el usuario está autenticado y se encuentra en la página del foro de contacto en EcoMovil
    When el usuario accede a la sección "Foro" desde el menú
    Then el usuario debería ver una lista de propietarios que han publicado sus datos de contacto a través de WhatsApp
