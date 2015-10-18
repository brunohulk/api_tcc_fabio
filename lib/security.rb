require_relative "databasecon"
require 'digest'

class Security
	def initialize
		@con = DatabaseCon.getInstance[:users]
		@md5 = Digest::MD5.new
	end

	def valid_user?(user, password)
		password = @md5.hexdigest password
		res =  @con.find(:username => user, :password => password).count
		return (res > 0? true: false)
	end
end	