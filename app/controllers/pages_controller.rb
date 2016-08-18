class PagesController < ApplicationController
	
  def home
  	@gyms = OauthService.get_gyms("0600000001", "12345")
  end
end

