class Stock < ApplicationRecord
    has_many :user_stocks
    has_many :users, through: :user_stocks

    def self.new_from_lookup(ticker_symbol)
        begin
            looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
            new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.previous_close.to_f)
        rescue Exception => e
            return nil
        end
    end
end
