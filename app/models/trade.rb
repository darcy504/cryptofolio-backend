class Trade < ApplicationRecord
  belongs_to :portfolio

  # when form is submitted for a new trade, must enter an amount
  validates :amount, presence: true
end
