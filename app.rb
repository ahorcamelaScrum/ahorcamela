require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
	session['ah'] = Ahorcado.new()
	session['inputs'] = session['ah'].construyeInput
	erb(:juego)
end