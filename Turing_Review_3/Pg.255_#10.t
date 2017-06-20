var numberofitems : int
var total : int :=0
var mean : real :=0
var mode : int
var current_i, current_ii : int
put "How many numbers do you want generated? "..
get numberofitems

var values : array 1 .. numberofitems of int
var sortedList : array 1 .. numberofitems of int
var mode_counter : array 1..9 of int

for i : 1 .. numberofitems
    randint (values (i), 1, 9)
    total += values (i)
    put values (i), " " ..
end for

for i : 1..9
    mode_counter (i) :=0
end for

put " "
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

mean := total/numberofitems

put "The mean is ", mean, "."

for i : 1..numberofitems
    case sortedList (i) of
	label 1 : 
	    mode_counter (1) +=1
	label 2 : 
	    mode_counter (2) +=1
	label 3 : 
	    mode_counter (3) +=1
	label 4 : 
	    mode_counter (4) +=1
	label 5 :
	    mode_counter (5) +=1
	label 6 :
	    mode_counter (6) +=1
	label 7 :
	    mode_counter (7) +=1
	label 8 :
	    mode_counter (8) +=1
	label 9 :
	    mode_counter (9) +=1
    end case
end for

mode := mode_counter (1)
for i : 2..9
    if mode_counter(i) > mode then
	mode := i
    end if
end for

put "The mode is ", mode, "."
