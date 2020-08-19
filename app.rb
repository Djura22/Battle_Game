require 'sinatra/base'

class Battle < Sinatra::Base

	get '/' do 
		"Prepare for war!"
	end

	run! if app_file == $0

end
