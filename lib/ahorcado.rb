class Ahorcado

	def initialize
		@palabra = 'murcielago'.split('')
	end

	def letra_valida?(letra)


		if letra.size > 1 
			false
		else
			@palabra.include? letra
		end
		
	end

	def numero_de_letras()

		return @palabra.size
	end 


end