class Trade < ApplicationRecord
  belongs_to :portfolio

  # when form is submitted for a new trade, must enter an amount
  validates :amount, presence: true

  # when someone creates a new trade and they give the trade_type attribute a value, that value must be included in this array
  validates_inclusion_of :trade_type, :in => ['buy', 'sell']
end
