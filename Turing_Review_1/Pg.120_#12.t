var roll1, roll2 : int

loop
    randint (roll1, 1, 6)
    randint (roll2, 1, 6)
    put roll1, " " ..
    put roll2
    exit when roll1 = roll2
end loop
