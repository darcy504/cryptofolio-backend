Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trades
      resources :portfolios
    end
  end
end
