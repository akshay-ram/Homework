var numberofitems : int
var largest : int
var current_i : int
var current_ii : int
put "How many values? " ..
get numberofitems

var values : array 1 .. numberofitems of int
var sortedList : array 1 .. numberofitems of int

for i : 1 .. numberofitems
    get values (i)
end for

sortedList (1) := values (1)

for i : 2 .. numberofitems
    sortedList (i) := values (i)
    current_i := sortedList (i)
    for ii : 1 .. i
	if sortedList (i) <= sortedList (ii) then
	    current_ii := ii
	    for decreasing iii : i .. ii + 1
		sortedList (iii) := sortedList (iii - 1)
	    end for
	    exit
	end if
    end for
    sortedList (current_ii) := current_i
end for

for i : 1 .. numberofitems
    put sortedList (i), " " ..
end for
put ""

if numberofitems mod 2 = 1 then
    put "The median is ", sortedList (numberofitems div 2 + 1), "."
elsif numberofitems mod 2 = 0 then
    put "The median is ", ((sortedList (numberofitems div 2) + sortedList (numberofitems div 2 + 1)) / 2), "."
end if

