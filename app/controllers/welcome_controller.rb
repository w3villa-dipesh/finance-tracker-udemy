class WelcomeController < ApplicationController
  
  def index
    @country = request.location.country
    @city = request.location.city
    country_code =  request.location.country_code
    @currency = country_code.upcase == "IN" ? "INR" : "USD"
    @address = request.location.address
    @ip_address = request.location.ip
  end
  
end