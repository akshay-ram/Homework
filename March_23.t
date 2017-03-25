put "Question #1 Lesson 23"
var word : string
var average : real := 0
var counter : int := 0
var total : int := 0
for i : 1 .. 10
    put "What is the word? " ..
    get word
    counter += 1
    total += length (word)
end for
average += total / counter
put "The average length of the words is ", average, "."

put "Question #2 Lesson 23"
var word1 : string
var average1 : real := 0
var counter1 : int := 0
var total1 : int := 0
loop
    put "What is the word? Exit by entering done " ..
    get word1
    exit when word1 = "done"
    counter1 += 1
    total1 += length (word1)
end loop
if word1 not= "done" then
    average1 += total1 / counter1
    put "The average length of the words is ", average1, "."
end if

put "Question #3 Lesson 23"
var integer : string
var integer_as_int : int
put "What is the integer? " ..
get integer : *
if strintok (integer) then
    integer_as_int := strint (integer)
end if

put "Question #3 Lesson 23"
var integer1 : string
var integer_as_int1 : int
loop
    put "What is the integer? " ..
    get integer1 : *
    exit when integer1 = "done"
    if strintok (integer1) then
	integer_as_int1 := strint (integer1)
    else
	put "That is not an integer. Please re-enter the integer. " ..
    end if
end loop
