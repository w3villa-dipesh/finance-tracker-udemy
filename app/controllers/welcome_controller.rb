class WelcomeController < ApplicationController
  
  def index
    @country = request.location.country
    @city = request.location.city
    # @currency = request.currency
    @address = request.location.address
  end
  
end