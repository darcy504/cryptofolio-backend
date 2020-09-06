class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer :portfolio_id
      t.integer :amount
      t.string :trade_type
      t.datetime :date
      t.string :currency_symbol

      t.timestamps
    end
  end
end
