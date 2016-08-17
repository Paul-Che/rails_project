class OauthService
	def self.get_oauth_token(member_phone, member_password)
		HTTParty.post('http://keepcool-api-preprod.herokuapp.com/oauth/token', 
		    headers: { 
		        'Content-Type' => 'application/json'
		    },
		    body: {
		  	    "username": member_phone,
		  	    "password": member_password,
		  	    "grant_type": "password"
		  	}.to_json
		)
	end

	def self.access_token(member_phone, member_password)
		get_oauth_token(member_phone, member_password)["access_token"]
	end

	def self.get_gyms(member_phone, member_password)
		HTTParty.get('http://keepcool-api-preprod.herokuapp.com/gyms', 
		    headers: { 
		        'Content-Type' => 'application/json',
		        'Authorization' => "Bearer #{access_token(member_phone, member_password)}"
		    })
	end
end
