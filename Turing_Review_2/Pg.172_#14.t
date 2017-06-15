for n : 2 .. 50
    var number : real := 1
    loop
	number += 1
	if number > sqrt (n) then
	    put n, " is a prime number"
	    exit
	end if
	exit when n mod number = 0
    end loop
end for
