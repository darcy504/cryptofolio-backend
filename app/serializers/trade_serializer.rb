class TradeSerializer < ActiveModel::Serializer
  attributes :id, :trade_type, :amount, :currency_symbol, :date, :portfolio_id
end
