portfolio1 = Portfolio.create(name: 'Bitcoin Portfolio', balance: 100)

trade1 = Trade.create(portfolio_id: 1, trade_type: 'buy', amount: 10, currency_symbol: 'BTC', date: Date.today)
trade2 = Trade.create(portfolio_id: 1, trade_type: 'sell', amount: 10, currency_symbol: 'BTC', date: Date.today)