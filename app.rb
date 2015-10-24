require 'sinatra/base'
require "json"
require_relative "lib/security"

class App < Sinatra::Base
	set :bind, '0.0.0.0'
	post '/login' do
   		user = params[:user]
		password = params[:password]

		security = Security.new
		auth = security.valid_user?(user, password)
		#If is ok create a session token
		status 403 if auth == false
		status 200 if auth == true
	end 
	run!
end 
