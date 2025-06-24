Feature: API para Búsqueda Geolocalizada de Vehículos

Scenario: Implementación de API para Búsqueda Geolocalizada de Vehículos
    Given la infraestructura y los endpoints necesarios están configurados
    When un usuario realiza una solicitud de búsqueda geolocalizada desde la app
    Then la API recibe la ubicación del usuario y devuelve una lista de vehículos cercanos con su disponibilidad y detalles relevantes
