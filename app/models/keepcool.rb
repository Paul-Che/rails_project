class Keepcool < ActiveRecord::Base
	# include 'HTTParty'
	# base_uri 'keepcool-api-preprod.herokuapp.com'

	# def initialize(member_phone, member_password)
	# 	@auth = { username: member_phone, password: member_password, grant_type: "password" }
	# end

	# def gyms
	# 	self.class.get()
	# end

	# def oauth_token
	# 	HTTParty.post('http://keepcool-api-preprod.herokuapp.com/oauth/token', 
	# 	    headers: { 
	# 	        'Content-Type' => 'application/json'
	# 	    },
	# 	    body: {
	# 	  	    "username": "0600000001",
	# 	  	    "password": "12345",
	# 	  	    "grant_type": "password"
	# 	  	}.to_json
	# 	)
	# end

	# def access_token
	# 	JSON.parse oauth_token.body.gsub('=>': ':')
	# end
end
