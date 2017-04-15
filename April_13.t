put "Question #1 Lesson 34"
procedure repeating_word (n : int, word : string)
    for i : 1 .. n
	put word
    end for
end repeating_word

repeating_word (10, "hi, ")
repeating_word (10, "how")
repeating_word (10, "are")
repeating_word (10, "you")

put "Question #2 Lesson 34"
procedure stars (line_number : int)
    for i : 1 .. line_number
	put "*****"
    end for
end stars

stars (7)

var number_of_times : int
put "How many lines of stars do you want? " ..
get number_of_times

stars (number_of_times)

put "Question #3 Lesson 34"
procedure slant (rows : int)
    for i : 1 .. rows
	for ii : 1 .. i - 1
	    put " " ..
	end for
	put "*"
	put ""
    end for
end slant

slant (7)
slant (2)

put "Challenge Question Lesson 34"
function aa (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) = "a" then
	    new_word += "aa"
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end aa
function c (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) = "b" then
	    new_word += "c"
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end c
function random_c (word : string) : string
    var new_word : string := ""
    var random : int
    randint (random, 1, length (word))
    for i : 1 .. length (word) + 1
	if i = random then
	    new_word += "c"
	    new_word += word (i)
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end random_c

var word6 : string
var random_function : int
var random_calls : int
put "What are the string of letters? " ..
get word6
randint (random_calls, 1, 10)
put "This will repeat ", random_calls, " times."
for i : 1 .. random_calls
    randint (random_function, 1, 3)
    if random_function = 1 then
	put "This will replace every letter a with aa in your string of letters."
	put aa (word6)
    elsif random_function = 2 then
	put "This will replace every letter b with a c in your string of letters."
	put c (word6)
    elsif random_function = 3 then
	put "This will insert a letter c at a random location in your string of letters."
    end if
end for
