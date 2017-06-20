procedure inflate (amount : real, rate : real)
    var value : real
    var amount1 : real := amount
    for i : 1..10
	value := amount1 * (rate/100)
	put "Year ", i, " - ", value : 0 : 2
	amount1 += value
	value :=0
    end for
end inflate

var original_amount, rate_of_inflation : real

put "What is the original amount and rate of inflation? "..
get original_amount, rate_of_inflation
inflate (original_amount, rate_of_inflation)
