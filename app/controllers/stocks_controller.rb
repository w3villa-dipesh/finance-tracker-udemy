class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      # render json: @stock
      if @stock
        render 'users/my_portfolio'
      else
        flash[:alert]="Not a valid Stock"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "Please Enter a Symbol to Search."
      redirect_to my_portfolio_path
    end
  end
end