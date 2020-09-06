class Api::V1::TradesController < ApplicationController


  def index
    @trades = Trade.all
    render json: @trades
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.save
      render json: @trade
    else 
      render json: {error: "Could not complete trade, please pass valid trade params"}
    end
  end

  def show
    @trade = Trade.find(params[:id])
    render json: @trade
  end

  def destroy

  end

  private

  # Specifies the attributes a trade can be created with
  def portfolio_params
    params.require(:trade).permit(:portfolio_id, :trade_type, :amount, :currency_symbol, :date)
  end
end
