var numberofinput : int
put "How many integers? "..
get numberofinput

var inputList : array 1..numberofinput of int
var sortedList : array 1..numberofinput of int
var numberofitems : int :=1

function isNotReplicate (number : int) : boolean
     for j : 1..numberofitems
	if number = inputList(j) then
	    result false
	 end if
     end for
     result true
end isNotReplicate

for i : 1..numberofinput
    get inputList(i)
end for

sortedList(1):=inputList(1)

for i : 2..numberofinput
    if isNotReplicate (inputList(i)) then
	numberofitems +=1
	sortedList(numberofitems):=inputList(i)
    end if
end for

for i : 1..numberofitems
    put sortedList(i)
end for
