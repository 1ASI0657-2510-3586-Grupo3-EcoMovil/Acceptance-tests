Feature: Buscar Vehículos

Scenario: Buscar un vehículo disponible por tipo
    Given el usuario está en la página de búsqueda de vehículos
    When ingresa el tipo de vehículo deseado y aplica filtros
    Then se muestran todos los vehículos disponibles que coinciden con el tipo seleccionado
