put "Question #1 Lesson 24"
var word : string
var letters : int
loop
    put "What is the word? "..
    get word
    exit when word = "done"
    if length (word) < 2 then
	put "The word has to be at least 2 letters."
    end if
    put word(1) , " " ..
    put word(*)   
end loop

put "Question #2 Lesson 24 Method #1"
var my_array : array 1 .. 11 of string
var temp : string
my_array(11):=""
for i : 1..10
    put "What is the word? "..
    get my_array(i)
end for
for i : 1.. 10
    if length (my_array(i)) > length (my_array(i+1)) then
	temp := my_array(i)
	my_array(i) := my_array(i+1)
	my_array(i+1) := temp
    end if
end for
put "The longest word is ", my_array(11)

put "Question #2 Lesson 24 Method #2"
var word : string
var longest_word : string := ""
for i : 1 .. 10
   put "Please enter a word: " ..
   get word
   if length(word) > length(longest_word) then
       longest_word := word
   end if
end for
put "The longest word you entered is ", longest_word, "."

put "Question #3 Lesson 24"
var words : string
var counter : int :=0
loop
    put "What is the word? "..
    get word
    exit when word = "done"
    for i : 1..length (word)
	if index ("aeiou", word(i)) not=0 then
	    counter +=1
	end if
    end for
    put "The number of vowels is " , counter , "."
end loop
