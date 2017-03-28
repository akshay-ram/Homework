put "Question #1 Assignment 6"
var word1 : string
put "What is the word? "..
get word1
for i : 1..length(word1)
    put word1(i)
end for
put " "

put "Question #2 Assignment 6"
var word2 : string
put "What is the word? "..
get word2
for decreasing i : length (word2) .. 1
    put word2(i)
end for
put " "

put "Question #3 Assingment 6"
var word3 : string
put "What is the word? "..
get word3
if length (word3) >= 2 then
    put word3 (*)..
    for i : 2 .. length (word3) - 1
	put word3 (i)..
    end for
    put word3(1)..
end if

put "Question #4 Assingment 6"
var word4 : string
put "Please enter a word. " ..
get word4
put word4(length(word4) div 2+1 .. *)..
put word4(1.. length(word4) div 2)

put "Question #5 Assignment 6"
var word5 : string
var new_word5 : string := ""
put "Please enter a word. " ..
get word5
for i : 1..length(word5)
    if index("aeiouAEIOU" , word5(i)) not=0 then
	new_word5+="9"
    else
	new_word5+=word5(i)
    end if
end for
put new_word5

put "Question #6 Assignment 6"
var new_word6 : string := ""
var word6 : string
put "Please enter a word. " ..
get word6
for i : 1..length(word6)
    if index("aeiouAEIOU" , word6(i)) =0 then
	new_word6+="9"
    else
	new_word6+=word6(i)
    end if
end for
put new_word6

put "Question #7 Assignment 6"
var new_word7 : string := ""
var word7 : string
put "Please enter a word. " ..
get word7
for i : 1..length(word7)
    if index("aeiou" , word7(i)) not=0 then
	case word7(i) of
	    label "a" : new_word7+="A"
	    label "e" : new_word7+="E"
	    label "i" : new_word7+="I"
	    label "o" : new_word7+="O"
	    label "u" : new_word7+="U"
	end case
    else
	new_word7+=word7(i)
    end if
end for
put new_word7

put "Question #8 Assignment 6"
var new_word8 : string := ""
var word8 : string
put "What is the word? "..
get word8
for i : 1..length(word8)
    if not (index("aeiou", word8(i))) =0 then
	new_word8 += Str.Upper (word8(i))
    else
	new_word8 += word8(i)
    end if
end for
put new_word8

put "Question #9 Assignment 6"
var word9 : string
var new_word9 : string := ""
put "What is the word? "..
get word9
for i : 1..length(word9)
    if not (index("aeiouAEIOU", word9(i))) =0 then
	case word9(i) of
	    label "a" : new_word9 +="e"
	    label "e" : new_word9 +="i"
	    label "i" : new_word9 +="o"
	    label "o" : new_word9 +="u"
	    label "u" : new_word9 +="a"
	end case
    else 
	new_word9+=word9(i)
    end if
end for
put new_word9

put "Question #10 Assignment 6"
var word10 : string
var new_word10 : string :=""
put "What is the word? "..
get word10
for i : 1..length(word10)
    if word10(i) >="A" and word10(i) <="Z" then
	new_word10 += Str.Lower (word10(i))
    else
	new_word10 += Str.Upper (word10(i))
    end if
end for
put new_word10
   
