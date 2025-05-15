Feature: Visualización y navegación desde la barra de navegación

Scenario: Visualización de la Barra de Navegación
Given el usuario se encuentra en la landing page
When se muestra la barra de navegación
Then podrá visualizar diversas secciones y botones

Scenario: Funcionalidad de Navegación
Given el usuario visualiza la barra de navegación en la landing page
When hace clic en cualquiera de los enlaces de la barra
Then debe ser redirigido a la sección correspondiente