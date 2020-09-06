class Portfolio < ApplicationRecord
  has_many :trades

  # our portfolio must have a name and balance
  validates :name, :balance, presence: true
end
