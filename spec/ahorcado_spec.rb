require './lib/ahorcado.rb'

describe Ahorcado do
	it 'validar la letra este incluida en la palabra' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.letra_valida?('a')
		expect(resultado).to eq true
	end	

	it 'validar la letra no este incluida en la palabra' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.letra_valida?('x')
		expect(resultado).to eq false
	end

	it 'regresar la longitud de la palabra que se va a adivinar' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.numero_de_letras()
		expect(resultado).to eq 10
	end	

	it 'validar que sólo se pueda agregar una sola letra' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.letra_valida?('aDs')
		expect(resultado).to eq false
	end	


	it 'validar que no permita enviar contenido vacío' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.letra_valida?('  ')
		expect(resultado).to eq false
	end	


	it 'validar que sólo se puedan enviar letras' do
		ahorcado = Ahorcado.new
		resultado = ahorcado.letra_valida?('@ %')
		expect(resultado).to eq false
	end

	it 'debe regresar un arreglo con la letra que se agrega' do
		ahorcado = Ahorcado.new
		ahorcado.letra_valida?('o')
		resultado = ahorcado.resultado

		expect(resultado).to eq [nil, nil, nil, nil, nil, nil, nil, nil, nil, 'O']
	end


	it 'debe regresar un arreglo sólo con una de las letra que se agrega' do
		ahorcado = Ahorcado.new
		ahorcado.letra_valida?('o')
		ahorcado.resultado
		ahorcado.letra_valida?('p')
		resultado = ahorcado.resultado

		expect(resultado).to eq [nil, nil, nil, nil, nil, nil, nil, nil, nil, 'O']
	end

	it 'debe regresar un arreglo con las dos letras que se agregan' do
		ahorcado = Ahorcado.new
		ahorcado.letra_valida?('o')
		ahorcado.resultado
		ahorcado.letra_valida?('a')
		resultado = ahorcado.resultado

		expect(resultado).to eq [nil, nil, nil, nil, nil, nil, nil, 'A', nil, 'O']
	end


	it 'debo de regresar el mensaje de que he¡mos perdido despues de sobrepasar el número de intentos' do 
		ahorcado = Ahorcado.new
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		
		resultado = ahorcado.numIntentos
		expect(resultado).to eq "Perdiste"
		
	end

	it 'debo de regresar el mensaje de que he¡mos perdido despues de sobrepasar el número de intentos' do 

		ahorcado = Ahorcado.new
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('3')
		ahorcado.letra_valida?('t')
		ahorcado.letra_valida?('X')
		ahorcado.letra_valida?('X')
		resultado = ahorcado.numIntentos
		expect(resultado).to eq 5
		
	end

end