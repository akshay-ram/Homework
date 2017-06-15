var word : string
var new_word : string :=""

loop
    put "What is the word? To exit enter 'wow' "..
    get word
    exit when word = "wow"
    if length(word) = 1 then
	put "The word is only 1 character"
    end if
    for decreasing i : length(word)..1
	new_word += word(i)
    end for
    put new_word
    if word = new_word then
	put "This word is a palindrome"
    end if
    new_word := ""
end loop   

