Feature:
	Como jugador 
	quiero que me muestre los espacios en blanco de la palabra adivinar
	para iniciar el juego

Scenario: debe de existir los espacios
	Given que abri el juego
	Then debo ver "_ _ _ _ _ _ _ _ _ _"

Scenario: debe de existir los espacios	
	Given que abri el juego
	When  introduci la palabra murcielago
	Then debo ver "_ _ _ _ _ _ _ _ _ _"

Scenario: debe de existir los espacios	
	Given que abri el juego
	When  introduci la palabra hola
	Then debo ver "_ _ _"

