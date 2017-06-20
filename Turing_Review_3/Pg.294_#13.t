%program for rounding any number to any decimal place
function rounding (number : real) : real
    var number1 : real := number
    var number2 : int 
    var number1string : string := realstr (number1, 0)
    var digits : string := ""
    % find then whole numbers in the number
    for i : 1 .. length (number1string)
	if number1string (i) not= "." then
	    digits += number1string(i)
	else
	    exit
	end if
    end for
    number2 := strint (digits)
    % check whether the number is greater than or equal to 0.5 + the whole numbers
    if number1 > number2 and number1 <= 1+number2 then
	if number1 >= 0.5+number2 then
	    number1 := 1+number2
	else
	    number1 := number2
	end if
    end if
    result number1
end rounding

var input : real
var round_to : int

loop
    put "What number would you like to round? " ..
    get input
    put "What number would you like to round to? "..
    get round_to
    exit when input = 0
    put (rounding (input/round_to)) * round_to
end loop
