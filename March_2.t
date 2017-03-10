put "Lesson 15 #1"
var colourr : string
put "What is the colour? "..
get colourr
case colourr of
    label "red" : put "That is the 1st colour in the rainbow."
    label "orange" : put "That is the 2nd colour of the rainbow."
    label "yellow" : put "That is the 3rd colour of the rainbow."
    label "green" : put "That is the 4th colour of the rainbow."
    label "blue" : put "That is the 5th colour of the rainbow."
    label "indigo" : put "That is the 6th colour of the rainbow."
    label "violet" : put "That is the 7th colour of the rainbow."
    label "black" : put "That is a shade and is not in the rainbow."
    label "white" : put "That is a shade and is not in the rainbow."
    label "purple" : put "That is close to violet so it can be considered part of the rainbow."
    label "grey" : put "That is a shade and is not in the rainbow."
    label "brown" : put "That colour is not in the rainbow."
    label "pink" : put "That colour is not in the rainbow."
    label "silver" : put "That colour is not in the rainbow." 
    label "gold" : put "That colour is not in the rainbow."
    label : put "Sorry, but we are not familiar with that colour."
end case

put "Lesson 15 #2"
var number_11 : real
var number_22 : real
var operation : string
put "What are the two numbers? "..
get number_11, number_22
put "What is the operation? "..
get operation
case operation of
    label "+" : put "The answer is " , number_11+number_22 , "."
    label "-" : put "The answer is " , number_11-number_22 , "."
    label "*" : put "The answer is " , number_11*number_22 , "."
    label "/" : put "The answer is " , number_11/number_22 , "."
end case
put "Question #11"
var number_1, number_2 : int
put "What is the first number? "..
get number_1
put "What is the second number "..
get number_2
put "The sum of the two numbers is " , number_1 + number_2 , "."
put "The difference of the two numbers is " , number_1 - number_2 , "."
put "The product of the two numbers is " , number_1 * number_2 , "."
if number_1 = 0 or number_2 = 0 then
    put "Sorry, but we can't divide by those numbers."
else
    put "The quotient of the two numbers is " , number_1 / number_2 , "."
end if

put "Question #12"
var months : real
put "What is your age in months? "..
get months
if months mod 12 <=6 then
    put "Your age in years is " , months div 12 , "."
else
    put "Your age in years is " , months div 12 + 1, "."
end if

put "Question #13"
var startingh, startingm : real
var endingh, endingm : real
var elapsedh, elapsedm : real
put "What is the starting time in hours and minutes? Please enter in 24 hour time. "..
get startingh, startingm
put "What is the ending time in hours and minutes? Please enter in 24 hour time. "..
get endingh, endingm
elapsedh :=endingh-startingh
elapsedm :=endingm-startingm
put "The elapsed time was " , elapsedh, "h and " , elapsedm , "m."
