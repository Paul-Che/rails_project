class Keepcool < ActiveRecord::Base
	include 'HTTParty'
	base_uri 'keepcool-api-preprod.herokuapp.com'

	def initialize(username, password)
		@auth = { username: username, password: password }
	end

	def post()
		
	end
end
