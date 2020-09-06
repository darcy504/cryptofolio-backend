class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer :portfolio_id
      t.string :trade_type
      t.integer :amount
      t.string :currency_symbol
      t.datetime :date
    end
  end
end
