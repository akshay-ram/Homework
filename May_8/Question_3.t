var numberTimes : array 2 .. 12 of int := init (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
var numberSum : array 1 .. 50 of int
var roll1, roll2 : int
var sumChosen : int

for i : 1 .. 50
    randint (roll1, 1, 6)
    randint (roll2, 1, 6)
    put roll1, ","..
    put roll2, " " ..
    numberSum (i) := roll1 + roll2
end for

put " "
for i : 1 .. 50
    case numberSum (i) of
	label 2 :
	    numberTimes (2) += 1
	label 3 :
	    numberTimes (3) += 1
	label 4 :
	    numberTimes (4) += 1
	label 5 :
	    numberTimes (5) += 1
	label 6 :
	    numberTimes (6) += 1
	label 7 :
	    numberTimes (7) += 1
	label 8 :
	    numberTimes (8) += 1
	label 9 :
	    numberTimes (9) += 1
	label 10 :
	    numberTimes (10) += 1
	label 11 :
	    numberTimes (11) += 1
	label 12 :
	    numberTimes (12) += 1
    end case
end for

loop
    put "What sum would you like to know about? " ..
    get sumChosen
    exit when sumChosen = 0
    if sumChosen <= 1 or sumChosen > 12 then
	put "Sorry, but that is not a valid sum."
    else
	put numberTimes (sumChosen)
    end if
end loop

put "Thank you for using our program."
