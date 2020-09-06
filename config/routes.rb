Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :portfolios do
        resources :trades
      end
    end
  end
end

# We no longer have access to /api/v1/trades
# Our trade routes with associate with a specific portfolio
# Ex:
# Request -> /api/v1/portfolios/1/trades
# Returns a list of trades for portfolio 1
