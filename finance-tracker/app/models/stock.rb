class Stock < ApplicationRecord

    def self.new_from_lookup(ticker_symbol)
        looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
        # price = strip_commas(looked_up_stock.previous_close)
        new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.previous_close.to_f)
    end
end
