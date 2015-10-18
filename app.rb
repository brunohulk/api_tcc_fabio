require 'sinatra/base'
require "json"
require_relative "lib/security"

class App < Sinatra::Base

	post '/login' do
    	user = params[:user]
    	password = params[:password]

    	security = Security.new
    	auth = security.valid_user?(user, password)

    	status 403 if auth == false
    	status 200 if auth == true
	end 
	run!
end 