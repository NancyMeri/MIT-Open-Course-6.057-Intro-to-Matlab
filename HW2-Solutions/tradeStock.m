%% Trade Stock (optional)
function endValue = tradeStock(initialInvestment, price, buy, sell)
transCost = 12.95
money = initialInvestment
totalShares = 0
for n = 1:length(price)
    if length(find(buy == n)) == 1 %if it's a buy situation
        if money > transCost + price(n) %if you can afford it
            shares = floor((money-transCost)/price(n))
            money = money - transCost - (shares * price(n))
            totalShares = totalShares + shares
        end
    elseif length(find(sell == n)) == 1 %if it's a sell situation
        if (price(n) * totalShares) > transCost %if you'd profit
            money = money - transCost + (price(n) * totalShares)
            totalShares = 0
        end
    end
end
endValue = (price(length(price))*totalShares) + money
end

% Cut and paste the following code into the command window (CUT not copy)
load googlePrices.mat
tradeStock(100, price, lows, peaks)