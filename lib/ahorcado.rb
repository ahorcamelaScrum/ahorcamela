class Ahorcado

	ALBURES = [
		"Atrás se pide pero por delante se despacha",
		"Si te duele la cabeza sientate y descansa",
		"No me agarren el chiquito por que empieza a chillar"
	]

	def initialize
		@palabra = 'MURCIELAGO'.split('')
		@resultado = Array.new(@palabra.size)
		@numErrores = 6
		@intentoFallido=0
	end

	def letra_valida?(letra)
		@letra = letra.upcase
		

		if (@letra.size > 1 || @letra.to_i > 0) 
			
			return false
		else
			unless @palabra.include? @letra
				@intentoFallido+=1
				return false
			end			
			true
		end	 
	end

	def resultado
		@palabra.each_with_index  do |letra, index|
			next if letra != @letra
			@resultado[index] = @letra
		end
		@resultado 
	end	

	def numIntentos 
		if @intentoFallido >= @numErrores
			return  "Perdiste"
		end
	end

	def ganoJuego

		if @palabra == @resultado
			return "Has Ganado!"
		end
		if @intentoFallido >= @numErrores
			return  "Has Perdido :("
		end
		""
	end

	def numAciertos
		aciertos=0
		resultados = resultado.map { | letra | letra.nil? ? 0 : 1}
		resultados.each { |i| aciertos += i }
		aciertos
	end

	def albur 
		ALBURES[rand(0..ALBURES.size() - 1)]
	end 

end