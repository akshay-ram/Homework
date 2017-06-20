function absolute (number : real) : real
    var number1 : real := number
    result number1 + (-2) * number1
end absolute

var input : real
put "What is the number? " ..
get input
put absolute (input)
