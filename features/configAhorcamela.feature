Feature:
	Como jugador 
	quiero que me muestre los espacios en blanco de la palabra adivinar
	para iniciar el juego

Scenario: debe de existir los espacios
	Given que abri el juego
	Then debo ver "Bienvenido a Ahorcamela"

Scenario: si el usuario adivina la palabra despues de varios intentos
	Given que abri el juego
	And ingresa las letras "MURCIELAGO"
	Then debo ver "Has Ganado!"

Scenario: si el usuario se equivoca
	Given que abri el juego
	And ingresa las letras "MURS"
	Then debo ver un albur
