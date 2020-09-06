class Api::V1::PortfoliosController < ApplicationController


  def index
    @portfolios = Portfolio.all
    render json: @portfolios
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      render json: @portfolio
    else 
      render json: {error: "Could not create portfolio, please pass valid portfolio params"}
    end
  end

  def show

  end

  def destroy

  end

  private

  # Specifies the attributes a portfolio can be created with
  def portfolio_params
    params.require(:portfolio).permit(:name, :balance)
  end
end
