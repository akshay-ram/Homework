var input : string
var consonants, vowels, characters, numbers : string := ""

loop
    put "What is the input? " ..
    get input : *
    exit when input = "exit"
    input := Str.Lower (input)
    for i : 1 .. length (input)
	if input (i) >= "a" and input (i) <= "z" then
	    case input (i) of
		label "a" :
		    vowels += "a"
		label "e" :
		    vowels += "e"
		label "i" :
		    vowels += "i"
		label "o" :
		    vowels += "o"
		label "u" :
		    vowels += "u"
		label :
		    consonants += input (i)
	    end case
	elsif strintok (input (i)) then
	    numbers += input (i)
	elsif input (i) = " " then
	
	else
	    characters += input (i)
	end if
    end for
    if numbers not= "" then
	put "numbers - ", numbers
    end if
    if vowels not= "" then
	put "vowels - ", vowels
    end if
    if vowels not= "" then
	put "consonants - ", consonants
    end if
    if characters not= "" then
	put "any other characters - ", characters
    end if
    consonants := ""
    numbers := ""
    vowels := ""
    characters := ""
end loop

put "Thank you for using my program."
