var word : string
var new_word : string := ""
var fileNumber : int

open : fileNumber , "code.txt", get

if fileNumber < 0 then
    put "Error. File not found"
else
    loop
	exit when eof (fileNumber)
	get : fileNumber , word : *
    end loop
end if

var letterarray : array 1..length(word) of string

for i : 1..length(word)
    letterarray(i) := word(i)
end for

for i : 1..length(word)
    if letterarray(i) = "z" then
	letterarray(i) := "a"
    elsif letterarray (i) = " " then
	letterarray(i) := " "
    else
	letterarray(i) := chr(ord(word(i))+1)
    end if
end for

for i : 1..length(word)
    put letterarray(i) ..
end for

