put "Question #1 Lesson 28"
var word1 : string
var character1 : int
for i : 1 .. 5
    randint (character1, 1, 10)
     put "Please enter a word that is ", character1, " characters long: " ..
    get word1
end for

put "Question #1 Part a Lesson 28"
var word1a : string
var character1a : int
for i : 1 .. 5
    randint (character1a, 1, 10)
end for
put "Please enter a word that is ", character1a, " characters long: " ..
get word1a
if length (word1a) = character1a then
    put "Good Job."
else
    put "Do you even READ bro?"
end if

put "Question #1 Part b Lesson 28"
var word1b : string
var character1b : int
loop
    for i : 1 .. 5
	randint (character1b, 1, 10)
    end for
    put "Please enter a word that is ", character1b, " characters long: " ..
    get word1b
    if length (word1b) = character1b then
	put "Good Job."
	exit
    else
	put "Do you even READ bro?"
    end if
end loop

put "Question #2 Lesson 28"
var number : int
for i : 1 .. 10
    randint (number, 50, 60)
    put number, ",", " " ..
end for
put ""

put "Question #3 Lesson 28"
var roll3 : int
for i : 1 .. 20
    randint (roll3, 1, 6)
    put roll3, " " ..
end for
put ""

put "Question #3 Part a Lesson 28"
var roll3a : int
var counter13a, counter23a, counter33a, counter43a, counter53a, counter63a : int := 0
for i : 1 .. 20
    randint (roll3a, 1, 6)
    put roll3a, " " ..
    if roll3a = 1 then
	counter13a += 1
    elsif roll3a = 2 then
	counter23a += 1
    elsif roll3a = 3 then
	counter33a += 1
    elsif roll3a = 4 then
	counter43a += 1
    elsif roll3a = 5 then
	counter53a += 1
    elsif roll3a = 6 then
	counter63a += 1
    end if
end for
put ""
put "1: ", counter13a
put "2: ", counter23a
put "3: ", counter33a
put "4: ", counter43a
put "5: ", counter53a
put "6: ", counter63a
put ""

put "Question #4 Lesson 28"
var number4 : int
var guess4 : int
var counter4 : int :=0
randint (number4, 1, 100)
loop
    put "What is your guess? "..
    get guess4
    exit when guess4 = number4
    counter4 += 1
    if guess4 < number4 then
	put "Higher"
    else
	put "Lower"
    end if
end loop
if counter4 > 10 then
    put "You're a bad guesser"
elsif counter4 = 1 then
    put "You're a god!"
elsif counter4 = 10 then
    put "You're average"
elsif counter4 < 10 then
    put "You're a good guesser"
end if
