put "Question #1 Lesson 25"
var word : string
var new_word : string := ""
put "What is the word? "..
get word
for i : 1..length (word)
    if word(i) not= "d" then
	new_word +=word(i)
    end if
end for
put "The new word is ", new_word ,"."

put "Question #2 Lesson 25"
var word1 : string
var new_word1 : string :=""
put "What is the word? "..
get word1
for i : 1..length (word1)
    if index("aeiouAEIOU" , word1(i)) not= 0 then
	new_word1 +=word1(i)
    end if
end for
put "The new word is ", new_word1 , "."

