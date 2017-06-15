var number : int := 40

loop
    put number
    number += 1
    if sqrt (number) = 8 then
	put number
	exit
    elsif number = 101 then
	exit
    end if
end loop
