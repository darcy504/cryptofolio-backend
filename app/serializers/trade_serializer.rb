class TradeSerializer < ActiveModel::Serializer
  attributes :id, :portfolio_id :trade_type, :amount, :currency_symbol, :date
end
