var itemName : array 1 .. 10 of string
var itemNumber : array 1 .. 10 of int
var itemChosen : string

for i : 1 .. 10
    put "What is the item name? " ..
    get itemName (i) : *
    put "How many do you have of that item in your inventory? " ..
    get itemNumber (i)
end for

loop
    put "What item do you want to know about? " ..
    get itemChosen : *
    exit when itemChosen = "exit"
    for i : 1 .. 10
	if itemChosen = itemName (i) then
	    put itemNumber (i)
	end if
    end for
end loop
