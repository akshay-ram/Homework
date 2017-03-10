put "Question #9 Assignment Repetition"
var integer : real
loop
    put "What is the integer? "..
    get integer
    exit when integer=0
    put "The opposites of these numbers is " , integer*-1 , "."
end loop

put "Question #10 Assignment Repetition"
var integernp : real
var how_many_p : int :=0
var how_many_n : int :=0
loop
    put "What is the integer? "..
    get integer
    exit when integer=0
    if integer <0 then
	how_many_n +=1
    else
	how_many_p +=1
    end if
end loop
put "The number of positive integers is " , how_many_p , ", and the number of negative integers is " , how_many_n , "." 

put "Question #12 Assignment Repetition"
var price : real
var tax_status : string
var total_price : real :=0
const GST : real :=0.05
const PST : real :=0.08
loop
    put "What is the price and tax status? " ..
    get price, tax_status
    exit when price = 0
    if tax_status = "yes" then
	price := price + (price*(GST+PST))
	total_price += price
    else
	total_price += price
    end if
end loop
put "The total PST is $" , PST , "."
put "The total GST is $" , GST , "."
put "The overall total is $" , total_price , "."

put "Question #13 Assignment Repetition"
var age : string
var adult_many : int
var adult_total : real :=0
var child_many : int
var child_total : real :=0
var senior_many : int
var senior_total : real :=0
const ADULT_TICKET : real :=10
const CHILD_TICKET : real :=5
const SENIOR_TICKET : real :=7.5
loop
    put "Are you adult, child, or a senior? " ..
    get age
    case age of
    exit when age ="done"
	label "adult":
	    put "How many adults are there? " .. 
	    get adult_many
	    adult_total :=adult_many*ADULT_TICKET
	label "child":
	    put "How many children are there? " ..
	    get child_many
	    child_total :=child_many*CHILD_TICKET
	label "senior":
	    put "How many seniors are there? " ..
	    get senior_many
	    senior_total :=senior_many*SENIOR_TICKET
	label :
	    put "Sorry, but we are not familiar with that age."
    end case
end loop
put "The total for adults is $" , adult_total , "."
put "The total for children is $" , child_total , "."
put "The total for seniors is $" , senior_total , "."
