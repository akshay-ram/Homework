var integer : string
var sum : int :=0

put "What is the integer? "..
get integer

put length(integer)

for i : 1..length(integer)
    sum += strint (integer (i))
end for

put sum

