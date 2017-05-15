var count : int
put "How many items? " ..
get count

var inputList : array 1 .. count of int
var current_smallest : int
var where : int

for i : 1 .. count
    get inputList (i)
end for

for i : 1 .. count
    current_smallest := inputList (i)
    for ii : i .. count
	if inputList (ii) < current_smallest then
	    current_smallest := inputList (ii)
	end if
    end for
    for iii : 1..count
	if current_smallest = inputList(iii) then
	    where := iii
	end if
    end for
    inputList(where) := inputList(i)
    inputList (i) := current_smallest
end for

for i : 1..count
    put inputList(i), " " ..
end for
