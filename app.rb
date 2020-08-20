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
		$player_1 = Player.new(params[:player_name_1])
		$player_2 = Player.new(params[:player_name_2])
		redirect '/play'
	end

	get '/play' do
		@player_name_1 = $player_1
		@player_name_2 = $player_2
		erb :play
	end

	get '/P1_attack' do
		@player_name_1 = $player_1
		@player_name_2 = $player_2
		Game.new.attack(@player_name_2)
		erb :p1_attack
	end

	run! if app_file == $0

end
