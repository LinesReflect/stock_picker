def stock_picker(prices)
    greatest_profit = 0
    greatest_profit_days = []
    prices.each_with_index do |price, idx|
        i = idx + 1
        until i >= prices.length do
            profit = prices[i] - price
            if profit > greatest_profit
                greatest_profit = profit
                greatest_profit_days.clear
                greatest_profit_days.push(idx, i)
            end
            i += 1
        end
    end
    greatest_profit_days
  end