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
		session['albur'] = nil
	else
		session['albur'] = session['ah'].albur
	end
	session['mensaje'] = "Has Ganado!" if session['ah'].ganoJuego 
	erb(:juego)
end