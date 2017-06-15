var weight : int

for i : 1 .. 10
    put "What is your weight? " ..
    get weight
    if weight > 80 then
	put "You are overweight"
    elsif weight >= 60 and weight <= 80 then
	put "You are medium weight"
    elsif weight < 60 then
	put "You are under weight"
    end if
end for

