class Ahorcado

	def initialize
		@palabra = 'MURCIELAGO'.split('')
		@resultado = Array.new(@palabra.size)
		@numIntentos = 6
		@intentosUsuario=0
	end

	def letra_valida?(letra)
		@letra = letra.upcase

		if (@letra.size > 1 || @letra.to_i > 0) 
			@intentosUsuario+=1
			return false
		else

			return false unless @palabra.include? @letra
			true
		end	 
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

	def numIntentos intentosUsuario
		if intentosUsuario > @numIntentos
			return  "Perdiste"
		else
			return "X"
		end
	end

	def ganoJuego
		@palabra == @resultado
	end

	def numAciertos
		aciertos=0
		resultados = resultado.map { | letra | letra.nil? ? 0 : 1}
		resultados.each { |i| aciertos += i }
		aciertos
	end

end