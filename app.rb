require 'sinatra'
require "json"

#There is a lot job to do =)
get '/users_around' do
	users = ["teste", "teste2","teste3"]
 	users.to_json
end
