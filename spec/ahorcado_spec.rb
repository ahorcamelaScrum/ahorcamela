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


end