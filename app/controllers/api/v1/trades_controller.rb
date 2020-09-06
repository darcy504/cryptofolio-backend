class Api::V1::TradesController < ApplicationController


  def index

  end

  def create

  end

  def show

  end

  def destroy

  end

  private

  # Specifies the attributes a trade can be created with
  def portfolio_params
    params.require(:trade).permit(:portfolio_id, :trade_type, :amount, :currency_symbol, :date)
  end
end
