var word, letter, replacement : string
var new_word : string := ""

loop
    put "What is the word? " ..
    get word
    put "What is the letter? " ..
    get letter
    put "What is the replacement letter? " ..
    get replacement

    for i : 1 .. length (word)
	if index (letter, word(i)) not = 0 then
	    new_word += replacement
	else
	    new_word += word (i)
	end if
    end for

    if new_word = word then
	put "No replacement needed."
    else
	exit
    end if
end loop

put "The new 'word' is ", new_word, "."
