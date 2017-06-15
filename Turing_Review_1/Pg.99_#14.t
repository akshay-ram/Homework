var marked_out_of : array 1..5 of real
var mark_on_test : array 1..5 of real
var average_percent : array 1..5 of real
var average : real :=0
var name : string

put "What is you name? "..
get name

for i : 1..5
    put "What is the test marked out of? "..
    get marked_out_of (i)
    put "What is the mark on the test? "..
    get mark_on_test(i)
end for

for i : 1..5
    average_percent(i) := mark_on_test(i)/marked_out_of(i)
    average_percent(i) *= 100
    put name, " received ", average_percent(i) : 0 : 1, "% on Test ", i, "."
end for

for i : 1..5
    average += average_percent(i)
end for

average /= 5

put "The total average for all 5 tests for ", name, " is ", average : 0 : 1, "%."
