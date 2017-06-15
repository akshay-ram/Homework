var average : real :=0
var list_number : int

put "How many items in the list? "..
get list_number

var marks : array 1..list_number of int

for i : 1..list_number
    put "What is the mark? "..
    get marks(i)
    average += marks(i)
end for

average /= list_number

put "The average is ", average, "."
