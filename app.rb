require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

	get '/test' do 
		"Testing infrastructure working!"
	end

	get '/' do
		erb :index
	end

	post '/names' do
		session[:player_name_1] = params[:player_name_1]
		session[:player_name_2] = params[:player_name_2]
		redirect './play'
	end

	get '/play' do
		@player_name_1 = session[:player_name_1]
		@player_name_2 = session[:player_name_2]
		erb :play
	end

	run! if app_file == $0

end
