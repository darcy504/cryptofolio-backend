Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :portfolios do
        resources :trades
      end
    end
  end
end

# We no longer have access to fetch(http://localhost:3000/api/v1/trades)
# Our trade routes will associate with a specific portfolio
# Ex:
# Request -> fetch(http://localhost:3000/api/v1/portfolios/1/trades)
# Returns a list of trades for portfolio 1
