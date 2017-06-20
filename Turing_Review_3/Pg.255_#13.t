var numberofwords : int
var letterblock : string := "zyxwvutsrqponmlkjihgfedcba"
var letter_number : int
var counter : int := 0

put "How many words do you want created? " ..
get numberofwords

var letters : array 1 .. 26 of string
var words : array 1 .. 4 * numberofwords of string

for decreasing i : 26 .. 1
    letters (i) := letterblock (* -i + 1)
end for

for i : 1 .. 4 * numberofwords
    for ii : 1 .. 4
	randint (letter_number, 1, 26)
	words (i) := letters (letter_number)
	letter_number := 0
    end for
end for

for i : 1 .. 4 * numberofwords
    if i mod 4 = 0 then
	put words (i) ..
	put " " ..
    else
	put words (i) ..
    end if
end for
