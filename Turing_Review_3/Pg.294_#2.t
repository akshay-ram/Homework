function yearly_interest (balance : int, interest : int) : real
     var yearly_interest_amount : real
     yearly_interest_amount := balance * (interest/100)
     result yearly_interest_amount
end yearly_interest

var balance1, interest1 : int

put "What is the total balance and yearly interest rate?"
get balance1, interest1
put "Your interest payment will be $", yearly_interest (balance1, interest1), "."
