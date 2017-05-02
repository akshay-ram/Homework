var temp_numbers : array 1 .. 10 of real
var temp : real 
var total : real :=0
var average : real :=0
for i : 1..10
    put "What is the temperature? "..
    get temp
    temp_numbers (i) := temp
end for

for i : 1..10
    total += temp_numbers(i)
end for

average := total/10

put average
