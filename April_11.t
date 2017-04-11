put "Question #1 Lesson 32"
function convert_meters(centi : real) : real
    var meters : real
    meters := centi / 100
    result meters
end convert_meters

var centi1 : real
put "What is the length in centimeters? "..
get centi1
put convert_meters(centi1)

put "Question #2 Lesson 32"
function area_triangle (height : real, base : real) : real
    var new_area : real
    new_area := (height*base)/2
    result new_area
end area_triangle

var height1 : real
var base1 : real
put "What is the base and height? "..
get base1, height1
put area_triangle (base1, height1)

put "Question #3 Lesson 32"
function linear_equation (slope : real, y_int : real, x_value : real) : real
    var y_value : real
    y_value := (slope*x_value)+ y_int
    result y_value
end linear_equation

var slope1 : real
var y_int1 : real
var x_value1 : string
var x_value2 : real

put "What is the slope and y-int? "..
get slope1, y_int1
loop
    put "What is the x value? "..
    get x_value1
    exit when x_value1 = "exit"
    x_value2 := strint(x_value1)
    put linear_equation (slope1, y_int1, x_value2)
    x_value2 :=0
end loop

put "Question #4 Lesson 32"
function asterix (word : string) : string
    var new_word : string :=""
    for i : 1..length(word)
	if index("aeiouAEIOU", word(i)) not= 0 then
	    new_word += "*"
	else
	    new_word += word(i)
	end if
    end for
    result new_word
end asterix
	    
var word1 : string
put "What is the word? "..
get word1
put asterix (word1)
