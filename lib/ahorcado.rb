class Ahorcado

	def initialize
		@palabra = 'MURCIELAGO'.split('')
		@resultado = Array.new(@palabra.size)
	end

	def letra_valida?(letra)
		@letra = letra.upcase

		return false if (@letra.size > 1 || @letra.to_i > 0) 
		return false unless @palabra.include? @letra
		true 
	end

	def numero_de_letras
		return @palabra.size
	end 

	def construyeInput
		inputs=""
		for x in 1.. numero_de_letras
		 inputs += "<input style='padding-right:5px;' type='text' size='2' name='letra_#{x}'>"
		end
		inputs
	end

	def resultado
		@palabra.each_with_index  do |letra, index|
			next if letra != @letra
			@resultado[index] = @letra
		end	
		@resultado 
	end	

end