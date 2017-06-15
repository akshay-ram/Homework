var total_income : int
var paytax1, paytax2, paytax3 : real := 0
var total_tax : real := 0
const TAX1 : real := 0.17
const TAX2 : real := 0.24
const TAX3 : real := 0.29

put "What is your income? "..
get total_income

if total_income - 27500 > 0 then
    paytax1 += 27500 * TAX1
    total_income -= 27500
end if

if total_income - 27500 > 0 then
    paytax2 += 27500 * TAX2
    total_income -= 27500
end if

if paytax1 not = 0 and paytax2 not = 0 then
    paytax3 += total_income * TAX3
end if 
 
total_tax := paytax1 + paytax2 + paytax3   
put "Your total federal tax payable is $", total_tax : 0 : 2 , "."
