var name : string

loop
    put "What is your name? " ..
    get name
    name := Str.Lower (name)
    for i : 1 .. length (name)
	if name (i) >= "a" and name (i) <= "h" then
	    put "You are in Group 1"
	elsif name (i) >= "i" and name(i) <= "z" then
	    put "You are in Group 2"
	else
	    put "Please re-enter your name."
	end if
	exit
    end for
end loop

