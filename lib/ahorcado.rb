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

	def resultado
		@palabra.each_with_index  do |letra, index|
			next if letra != @letra
			@resultado[index] = @letra
		end	
		@resultado 
	end	

end