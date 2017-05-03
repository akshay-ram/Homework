var temp_numbers : array 1 .. 10 of real
var temp : real
var highest : real
var lowest : real
for i : 1 .. 10
    put "What is the temperature? " ..
    get temp
    temp_numbers (i) := temp
end for

highest := temp_numbers (1)
for i : 2 .. 10
    if temp_numbers (i) > highest then
	highest := temp_numbers (i)
    end if
end for

lowest := temp_numbers (1)
for i : 2 .. 10
    if temp_numbers (i) < lowest then
	lowest := temp_numbers (i)
    end if
end for

put "The highest is ", highest, " and the lowest is ", lowest, "."

