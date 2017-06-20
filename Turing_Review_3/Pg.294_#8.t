function midLetter (word : string) : string
    var original : string := word
    for i : 1 .. length (original)
	if i = length (original) div 2 + 1 then
	    result original (i)
	end if
    end for
end midLetter

var word1 : string

put "What is the word? "..
get word1
put midLetter(word1)
