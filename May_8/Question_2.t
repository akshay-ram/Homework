var word : string
var new_word : string := ""

put "What is the word? " ..
get word : *

var letterarray : array 1 .. length (word) of string

for i : 1 .. length (word)
    letterarray (i) := word (i)
end for

for i : 1 .. length (word)
    if letterarray (i) = "a" then
	letterarray (i) := "z"
    elsif letterarray(i) = " " then
	letterarray(i) := " "
    else
	letterarray (i) := chr (ord (word (i)) - 1)
    end if
end for

for i : 1 .. length (word)
    put letterarray (i) ..
end for

