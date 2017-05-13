var first_item : int
var current_i : int
var numberofitems : int
var current_ii : int
put "How many items? " ..
get numberofitems

var inputItems : array 1 .. numberofitems of int
var sortedList : array 1 .. numberofitems of int

for i : 1 .. numberofitems
    get inputItems (i)
end for


sortedList (1) := inputItems (1)

for i : 2 .. numberofitems
    sortedList (i) := inputItems (i)
    current_i := sortedList(i)
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

for i : 1..numberofitems
    put sortedList(i), " " ..
end for
