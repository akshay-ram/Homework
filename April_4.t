put "Question #1 Lesson 29"
var number1 : int
var largest11 : int := 0
var largest12 : int := 0
var largest13 : int := 0
for i : 1 .. 3
    randint (number1, 100, 200)
    put number1
    if i = 1 then
	largest11 := number1
    elsif i = 2 then
	largest12 := number1
    elsif i = 3 then
	largest13 := number1
    end if
end for
if largest11 > largest12 and largest11 > largest13 and largest12 > largest13 then
    put largest13, " ", largest12, " ", largest11
elsif largest11 > largest12 and largest11 > largest13 and largest12 < largest13 then
    put largest12, " ", largest13, " ", largest11
elsif largest12 > largest11 and largest12 > largest13 and largest11 > largest12 then
    put largest12, " ", largest11, " ", largest13
elsif largest13 > largest12 and largest13 > largest11 and largest12 > largest11 then
    put largest11, " ", largest12, " ", largest13
elsif largest12 > largest11 and largest12 > largest11 and largest11 > largest13 then
    put largest13, " ", largest11, " ", largest12
elsif largest12 > largest13 and largest12 > largest11 and largest13 > largest11 then
    put largest11, " ", largest13, " ", largest12
end if

put "Question #1a Lesson 29"
var number1a : real
var largest11a : real := 0
var largest12a : real := 0
var largest13a : real := 0
for i : 1 .. 3
    rand (number1a)
    number1a *= 50
    number1a += 50
    put number1a
    if i = 1 then
	largest11a := number1a
    elsif i = 2 then
	largest12a := number1a
    elsif i = 3 then
	largest13a := number1a
    end if
end for
if largest11a > largest12a and largest11a > largest13a and largest12a > largest13a then
    put largest13a, " ", largest12a, " ", largest11a
elsif largest11a > largest12a and largest11a > largest13a and largest12a < largest13a then
    put largest12a, " ", largest13a, " ", largest11a
elsif largest13a > largest11a and largest13a > largest12a and largest11a > largest12a then
    put largest12a, " ", largest11a, " ", largest13a
elsif largest13a > largest12a and largest13a > largest11a and largest12a > largest11a then
    put largest11a, " ", largest12a, " ", largest13a
elsif largest12a > largest11a and largest12a > largest13a and largest11a > largest13a then
    put largest13a, " ", largest11a, " ", largest12a
elsif largest12a > largest13a and largest12a > largest11a and largest13a > largest11a then
    put largest11a, " ", largest13a, " ", largest12a
end if

put "Question #2 Lesson 29"
var number2 : int
var counter2 : int := 0
loop
    randint (number2, 1, 100)
    put number2, " " ..
    exit when number2 >= 90 and number2 <= 99
    counter2 += 1
end loop
put ""
put counter2

put "Question #2a Lesson 29"
var number2a : int
var before2a : int := 0
loop
    randint (number2a, 1, 100)
    put number2a, " " ..
    exit when number2a mod 5 = 0 and number2a mod 10 not= 0
    before2a += 1
end loop
put ""
put before2a

put "Question #3 Lesson 29"
var roll31 : int
var roll32 : int
var counter3 : int := 0
for i : 1 .. 30
    randint (roll31, 1, 6)
    put roll31, "," ..
    randint (roll32, 1, 6)
    put roll32, " " ..
    if roll31 = roll32 then
	counter3 += 1
    end if
end for
put ""
put counter3

put "Question #3a Lesson 29"
var roll31a : int
var roll32a : int
var counter3a : int := 0
for i : 1 .. 30
    randint (roll31a, 1, 6)
    put roll31a, "," ..
    randint (roll32a, 1, 6)
    put roll32a, " " ..
    if (roll31a + roll32a) mod 2 not= 0 then
	counter3a += 1
    end if
end for
put ""
put counter3a

put "Question #4 Lesson 29"
var roll41 : int
var roll42 : int
var counter4 : int :=0
loop
    randint (roll41, 1, 6)
    put roll41, "," ..
    randint (roll42, 1, 6)
    put roll42, " " ..
    exit when roll42 + roll41 = 7
    counter4 +=1
end loop
put ""
put counter4

put "Question #4a Lesson 29"
var roll41a : int
var roll42a : int
var counter4a : int :=0
loop
    randint (roll41a, 1, 6)
    put roll41a, "," ..
    randint (roll42a, 1, 6)
    put roll42a, " " ..
    exit when roll41a = 1 and roll42a = 1
    counter4a +=1
end loop
put ""
put counter4a
