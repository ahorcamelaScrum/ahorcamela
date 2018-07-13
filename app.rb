require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
	erb(:juego)
	session['ah'] = Ahorcado.new()
	session['inputs'] = session['ah'].construyeInput
end