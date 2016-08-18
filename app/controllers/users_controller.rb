class UsersController < ApplicationController
	require 'rest_client'

	USERNAME = "0600000001" # needed to access the APi
	PASSWORD = "12345" # needed to access the APi
	API_BASE_URL = "http://keepcool-api-preprod.herokuapp.com" # base url of the API

	before_action :oauth, :get_coaches

	def oauth
		token = RestClient.post "#{API_BASE_URL}/oauth/token", {"username": USERNAME, "password": PASSWORD, "grant_type": "password"}, {Content_type: 'application/json'}
		hash = JSON.parse(token, :symbolize_names => true)
		@access_token = hash[:access_token]
	end

	def get_coaches
		coaches = RestClient.get "#{API_BASE_URL}/coaches", {Content_type: 'application/json'}
		hash = JSON.parse(coaches, :symbolize_names => true)
		@access_token_coach = hash[:coaches][0][:access_token]
	end

	# def index
	# 	uri = "#{API_BASE_URL}/members" # specifying json format in the URl
	#   rest_resource = RestClient::Resource.new uri, headers: {Content_type: 'application/json', Authorization: "Bearer #{@access_token}"}
	#    # It will create
	#   # new rest-client resource so that we can call different methods of it
	#   users = rest_resource.get # will get back you all the detail in json format, but it
	#   # will we wraped as string, so we will parse it in the next step.
	#   @users = JSON.parse(users, :symbolize_names => true) # we will convert the return 
	#   # data into array of hash.see json data parsing here
	# end

	def self.member_id(id)
		RestClient.get "#{API_BASE_URL}/members/#{id}", {Content_type: 'application/json', Authorization: "Bearer #{@access_token}"}
	end

end

