put "Question #1 Lesson 27"
var word1 : string
var first_word1 : string := ""
loop
    put "What is the word? " ..
    get word1
    exit when word1 = "done"
    if word1 > first_word1 then
	word1 := first_word1
    end if
end loop
put "The first word is ", first_word1, "."

put "Question #1 Part a Lesson 27"
var word1a : string
var first_word1a : string := ""
loop
    put "What is the word? " ..
    get word1a
    exit when word1a = "done"
    if word1a > first_word1a then
	word1a := first_word1a
    end if
end loop
put "The first word is ", first_word1a, "."

put "Question #2 Lesson 27"
var word2 : string
var remove2 : string
put "What is the word? "..
get word2
put "What letter(s) should I remove? "..
get remove2 : *
for i : 1..length(word2)
    if word2(i) not= remove2 then
	put word2(i)..
    end if
end for
put ""

put "Question #3 Lesson 27"
var word3 : string
put "What is the word? "..
get word3
for i : 1..length(word3)
    if index("aeiou", word3(i)) = 0 then
	put "%"..
    else
	put word3(i)..
    end if
end for
