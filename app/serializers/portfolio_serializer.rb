class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance

  # Allow the frontend to access trades associated with an account
  has_many :trades
end
