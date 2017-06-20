var input : array 1 .. 10 of int
var message : array 1 .. 10 of string

for i : 1 .. 10
    put "What is the integer? " ..
    get input (i)
end for

for i : 1..10
    if input(i) mod 2 = 0 then
	message(i) := "This number is even"
    else
	message(i) := "This number is odd"
    end if
end for

for i : 1..10
    put input (i), " - ", message (i)
end for
