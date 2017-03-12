put "Question #1 Lesson 20"
var x, n : int 
var add : int :=0

put "What is x and n? "..
get x, n
for i : 0..n
    add += x**i
end for
put add 

put "Question #2 Lesson 20"
var number1 , number2 : int
loop
    put "What are your two numbers? "..
    get number1, number2
    if number1 mod 2 = 1 or number2 mod 2 = 1 then
	put "One or more of your numbers are not even. Please re-enter. "
    else 
	exit
    end if
end loop
if number1 > number2 then
    for decreasing i : number1..number2 by 2
	put i
    end for
else
    for i : number1 .. number2 by 2
	put i
    end for
end if

put "Question #3 Lesson 20"
var number : int
put "What is the number? "..
get number
for i : 1..number
    if number mod i = 0 then
	 put i , ", "..
    end if
end for        

put "Question #4 a) Lesson 20"
for i : 1..8
    put i**3
end for
 
put "Question #4 b) Lesson 20"
var sum : int :=0
for i : 1..8
    put i**3
    sum +=i**3
end for
put "The sum of the numbers is " , sum , "."

put "Question #4 c) Lesson 20"
var highest : int
put "What is the highest cube you would like to display? "..
get highest
for i : 1..highest
    put i**3
end for

put "Question #4 d) Lesson 20"
var highest2 : int
var lowest : int
put "What is the lowest and highest cube you would like to display? "..
get lowest, highest
for i : lowest..highest
    put i**3
end for

put "Question #5 Lesson 20"
var mark : int
var counter : int :=0
for i : 1..10
    put "What is the mark? "..
    get mark
    if mark >=70 then
	counter +=1
    end if
end for
put "The number of marks at least 70% is " , counter , "."

put "Question #6 Lesson 6"
var temp : int
loop
    put "What is the temperature? "..
    get temp
    if temp > 30 then
	exit
    end if
end loop
put "Wow, that's hot!"

put "Question #7 Lesson 6"
var temp1, temp2 : int
var average : real :=0
loop
    put "What are the two numbers? "..
    get temp1, temp2
    exit when temp1=0 and temp2=0 
    average := (temp1 + temp2)/2
    put "The average is " , average , "."
end loop
    
put "Question #8 Lesson 20"
const JULIA_M := 300
const JULIA_I := 0.0125
const MAX1_M :=280
const MAX1_I :=0.02
var julia : real :=0
var max1 : real :=0
var years : int :=0
julia := JULIA_M+ (JULIA_M*JULIA_I)
max1 := MAX1_M+ (MAX1_M*MAX1_I)
loop
    max1 += max1+ (max1*MAX1_I)
    julia += julia+ (julia*JULIA_I)
    exit when max1 > julia
    years +=1
end loop
put "It will take Max " , years , " more year(s) for him to have more money than Julia."
 
put "Question #9 Lesson 20"
var number11, number22 : int 
var numbers : int :=0
loop
    put "What are the two positive numbers? "..
    get number1, number2    
    exit when number1=0 or number2=0 
    if number1 < number2 then
	for i : number1 .. number2
	    numbers +=i
	end for
	put "The sum of the numbers in between is " , numbers , "."
    else
	put "The second number should be larger than the first. Please try again."
    end if
end loop

put "Question #10 Lesson 20"
const COUNTRY_A : int :=50000000
const COUNTRY_B : int :=70000000
const COUNTRY_AI : real :=0.03
const COUNTRY_BI : real :=0.02
var country_at : real :=0
var country_bt : real :=0
var yearsc :=0
country_at := COUNTRY_A+ (COUNTRY_A*COUNTRY_AI)
country_bt := COUNTRY_B+ (COUNTRY_B*COUNTRY_BI)
loop
    country_bt += country_bt+ (country_bt*COUNTRY_BI)
    country_at += country_at+ (country_at*COUNTRY_AI)
    exit when country_at > country_bt
    yearsc +=1
end loop
put "It will take Country A " , yearsc , " more year(s) for it to have more population than Country B."
