var radius : real
var area : real
var circumference : real
put "What is the radius of the circle? "..
get radius
area :=radius
area **=2
area *=3.14
circumference :=radius
circumference *=2
circumference *=3.14
put "The area of the circle is " , area , " m."
put "The circumference of the circle is " , circumference , " m."

var principal_loan : real
var interest_rate : real
put "What is the principal amount of the loan? "..
get principal_loan
put "What is the interest rate? "..
get interest_rate
interest_rate *=principal_loan
interest_rate /=100
put "The interest owing for one year is $" , interest_rate , "."

var price : real
var gst, pst : real :=0 
var total : real :=0
put "What is the price of the item? "..
get price
pst +=0.07*price
gst +=0.05*price 
total :=gst+pst+price
put "The gst is " , gst , ", the pst is " , pst , " and the total is " , total , "."

var first_number , second_number : real
put "What is the first number? "..
get first_number
put "What is the second number? "..
get second_number
put "The sum of the two numbers is " , first_number+second_number , "."
put "The difference of the two numbers is " , first_number-second_number , "."
put "The product of the two numbers is " , first_number*second_number , "."
put "The quotient of the two numbers " , first_number/second_number , "."
