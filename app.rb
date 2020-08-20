require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions

	get '/test' do
		"Testing infrastructure working!"
	end

	get '/' do
		erb :index
	end

	post '/names' do
		$game = Game.new(Player.new(params[:player_name_1]), Player.new(params[:player_name_2]))
		redirect '/play'
	end

	get '/play' do
		erb :play
	end

	get '/attack' do
		$game.attack($game.player_2)
		erb :attack
	end

	run! if app_file == $0

end
