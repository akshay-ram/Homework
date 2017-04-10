function subtract_five (number : real) : real 
    var new_number : real
    new_number := number - 5
    result new_number
end subtract_five

var number1 : real
put "What is the number? "..
get number1
put subtract_five(number1)
