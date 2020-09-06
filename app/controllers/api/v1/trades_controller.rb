class Api::V1::TradesController < ApplicationController

  before_action :set_portfolio

  def index
    @trades = @portfolio.trades 
    render json: @trades
  end

  def create

  end

  def show
  
  end

  def destroy
    
  end

  private

  # Find the account that matches the request 
  # (Ex: /api/v1/portfolios/1/trades) will show all of the trades for portfolio 1
  def set_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  # Specifies the attributes a trade can be created with
  def portfolio_params
    params.require(:trade).permit(:portfolio_id, :trade_type, :amount, :currency_symbol, :date)
  end
end
