put "Question #1 Lesson 33"
function isS (word : string) : boolean
    for i : 1 .. length (word)
	if i = 1 then
	    if word(i) = "s" or word (i) = "S" then
		result true
	    else
		result false
	    end if
	end if
    end for
end isS

var word1 : string
put "What is the word? " ..
get word1
put isS (word1)

put "Question #2 Lesson 33"
function ismultiple7 (number : int) : boolean
    if number mod 7 = 0 then
	result true
    else   
	result false
    end if
end ismultiple7

put ismultiple7 (14)
put ismultiple7 (21)
put ismultiple7 (123456)

put "Question #3 Lesson 33"
function palindrome (input : string) : string
    var output : string := ""
    for decreasing i : length(input) .. 1
	output += input (i)
    end for
    result output
end palindrome

function papas (STUB: string) : boolean
    if palindrome(STUB) = STUB then
	result true
    else
	result false
    end if
end papas

var wordwordword : string
put "Enter a word"
get wordwordword

if papas(wordwordword) then
    put wordwordword, " is a palindrome"
else
    put wordwordword, " isn't a palindrome"
end if

put "Question #4 Lesson 33"
function double (number : real) : real
    var new_number : real :=number
    loop
	new_number += new_number
	exit when new_number >= 1000
	put new_number
    end loop
    result new_number
end double

var number4 : real
put "What is the number? "..
get number4
put double(number4)

put "Question #5 Lesson 33"
function reverse (word3 : string) : string
    var new_word2 : string :=""
    for decreasing i : length(word3)..1
	new_word2+=word3(i)
    end for
    result new_word2
end reverse
function glue (word : string, word11 : string) : string
    result word + word11
end glue

var word11, word2, word3 : string
var new_word : string
put "Please enter three words. "..
get word11, word2, word3
new_word := glue(word11, word2)
new_word := reverse(new_word)
new_word := glue(new_word, word3)
put "The new word is ",new_word, "."
