require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
	session['ah'] = Ahorcado.new()
	session['inputs'] = session['ah'].resultado
	erb(:juego)
end

post '/' do
	if session['ah'].letra_valida? params['letraEnviar']
		session['inputs'] = session['ah'].resultado
	end
	# session['mensaje'] = "Has Ganado!" if session['ah'].ganoJuego
	session['mensaje'] = session['ah'].ganoJuego 
	erb(:juego)
end