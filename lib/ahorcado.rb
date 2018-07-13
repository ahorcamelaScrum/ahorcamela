class Ahorcado

	def initialize
		@palabra = 'm'.split('')
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

	def construyeInput
		inputs=""
		for x in 1.. numero_de_letras
		 inputs += "<input style='padding-right:5px;' type='text' size='2' name='letra_#{x}'>"
		end
		inputs
	end
end