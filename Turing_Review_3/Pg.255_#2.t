var number : int 
var average : real
var total : int :=0

put "How many people are you inputting? " ..
get number

var height : array 1 .. number of int

for i : 1 .. number
    put "What is the height? " ..
    get height (i)
    total += height(i)
end for

average := total/number

put "The average is ", average, "."

for i : 1..number
    if height(i) > average then
	put height(i), " is above average."
    end if
end for
