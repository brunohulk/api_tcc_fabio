require 'mongo'

class DatabaseCon
	def self.getInstance
		@@client ||= Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'api_fabio')
	end	
end

