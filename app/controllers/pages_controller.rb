require 'HTTParty'

class PagesController < ApplicationController
  def home
  	member_token = HTTParty.get('http://keepcool-api-preprod.herokuapp.com/oauth/token')

  	post = {
  	    "username": "0782224893",
  	    "password": "12345",
  	    "grant_type": "password"
  	}

	puts response.body, response.code, response.message, response.headers.inspect
  end
end
