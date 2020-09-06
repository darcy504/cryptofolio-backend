class Portfolio < ApplicationRecord
  has_many :trades

  # our portfolio must have a name and balance
  validates :name, :balance, presence: true

  # When a trade is created we will call this method on a specific portfolio and update the balance
  # We will pass it a trade argument, a trade has a trade_type of buy or sell & an amount
  def update_balance(trade)
    if trade.trade_type == 'buy'
      self.balance = self.balance + trade.amount
      self.save
    elsif trade.trade_type == 'sell'

      # If the balance of this portfolio is greater than or equal to the trade amount, that means we have enough currency to sell
      if self.balance >= trade.amount
        self.balance = self.balance - trade.amount
        self.save
      else 
        return "Uh, oh! Looks like you don't have enough currency to sell."
      end
    end
  end
end
