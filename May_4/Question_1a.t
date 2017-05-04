var temp_numbers : array 1 .. 10 of real
var temp : real 
for i : 1..10
    put "What is the temperature? "..
    get temp
    temp_numbers (i) := temp
end for

for decreasing i : 10..1
    put temp_numbers(i)
end for
