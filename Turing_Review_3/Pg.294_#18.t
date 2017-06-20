procedure clean (word : string)
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) >= "a" and word (i) <= "z" or word (i) >= "A" and word (i) <= "Z" then
	    new_word += word (i)
	end if
    end for
    put new_word
end clean

var input : string
put "What is the word? " ..
get input
clean (input)
