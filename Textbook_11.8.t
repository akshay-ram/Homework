put "Question #1 11.8 Excercises"
var word1 : string
var total1 : int := 0
var counter1 : int := 0
var average1 : real := 0
for i : 1 .. 10
    put "What is the word? " ..
    get word1
    total1 += length (word1)
    counter1 += 1
end for
average1 := total1 / counter1
put average1

put "Question #2 11.8 Excercises"
var word2 : string
var new_word2 : string := ""
loop
    put "What is the word? " ..
    get word2
    exit when word2 = "done"
    for i : 1 .. length (word2)
	if i = 1 then
	    new_word2 += word2 (i)
	end if
    end for
    new_word2 += word2 (*)
    put new_word2
    new_word2 := ""
end loop

put "Question #3 11.8 Excercises"
var number3 : int
loop
    put "How many asterisks do you want? " ..
    get number3
    exit when number3 < 0
    for i : 1 .. number3
	put "*" ..
    end for
    put ""
end loop

put "Question #5 11.8 Excercises"
var word5 : string
var new_word5 : string := ""
put "What is the word? " ..
get word5
for i : 1 .. length (word5)
    new_word5 += chr (ord (word5 (i)) + 1)
end for
put new_word5

put "Question #6 11.8 Excercises"
var word6 : string
var new_word6 : string := ""
put "What is the word? " ..
get word6
for decreasing i : length (word6) .. 1
    new_word6 += word6 (i)
end for
put new_word6
if new_word6 = word6 then
    put "This word is a palindrome."
end if

put "Question #7 11.8 Excercises"
var word7 : string
var new_word7 : string :=""
put "What is the word? " ..
get word7
for i : 1 .. length (word7)
    if length (word7) mod 2 not= 0 then
	if i = (length (word7) div 2) + 1 then
	    new_word7+= word7 (i)
	end if
    else
	exit
    end if
end for
if new_word7 = "" then
    put "This word is even."
else
    put new_word7
end if

put "Question #8 11.8 Excercises"
var word8 : string
var menu : int
var pattern : string
put "Menu"
put "1. Count a pattern"
put "2. Eliminate a pattern"
put "3. Substitute a pattern"
put "4. Exit"
get menu
case menu of
    label 1 :
	put "What is the word and pattern? "..
	get word8, pattern
	put index(
	
