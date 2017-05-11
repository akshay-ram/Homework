var numberofWords : int
put "How many words are in the file? " ..
get numberofWords

var inputWords : array 1 .. numberofWords of string
var sortedList : array 1 .. numberofWords of string
var fileNumber : int
var first_word : string
var last_word : string
var where : int

open : fileNumber, "bunchofwords.txt", get

if fileNumber > 0 then
	for i : 1 .. numberofWords
	    get : fileNumber, inputWords (i)
	    put inputWords(i), " " ..
	end for
else
    put "File not found."
end if

put " "
put " "

first_word := inputWords(1)

for i : 2 .. numberofWords
    if inputWords (i) > first_word then
	first_word := inputWords (i)
    end if
end for

for i : 1 .. numberofWords
    last_word := inputWords (1)
    for ii : 1 .. numberofWords
	if inputWords (ii) <= last_word then
	    last_word := inputWords (ii)
	    where := ii
	end if
    end for
    sortedList (i) := last_word
    inputWords (where) := chr(200)
end for

put "Here are the words in alphabetical order:"
for i : 1..numberofWords
    put sortedList(i)
end for
