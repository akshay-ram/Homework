var number : int := 100
var stop_number : int

put "What number do I stop at? "..
get stop_number

put "100, " ..
loop
    number -=7
    if number < stop_number then
	exit
    end if
    put number, ", " ..
end loop
