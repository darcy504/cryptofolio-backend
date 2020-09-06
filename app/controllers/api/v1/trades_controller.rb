class Api::V1::TradesController < ApplicationController

  before_action :set_portfolio

  def index
    @trades = Trade.all
    render json: @trades
  end

  def show
    @trade = Trade.find(params[:id])
    render json: @trade
  end

  # Builds a trade associated with a portfolio
  def create
    @trade = @portfolio.trades.new(trade_params)

    # We will not see the trade in our potfolio if the portfolio balance is not greater than that trade amount
    if @portfolio.update_balance(@trade) != "Insufficient balance."
      @trade.save
      render json: @trade
    else
      render json: {error: "Could not complete trade, insufficient portfolio balance."}
    end
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
