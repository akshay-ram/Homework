put "Question #1 Lesson 22"
var number : int
put "Enter the target number "..
get number
for i : 0 .. number by 4
    put i
end for

put "Question #2 Lesson 22"
var weight : real
var total : real :=0
var counter : int :=0
var average : real :=0
loop
    put "What is the weight in kg? ".. 
    get weight
    exit when weight = 0
    if weight > 0 then 
	total += weight
	counter +=1
    else
	put "Please input a weight in positive."
    end if
end loop
if counter not = 0 then 
    average:= total/counter
    put "The average is " , average : 0 : 3 , " kg."
end if

put "Question #3 Lesson 22"
var centi : real
var inch : real
var conversion : string
put "What would you like to convert; from inches to centimeters (enter i->cm) or centimeters to inches (enter cm->i)? "..
get conversion
if conversion = "i->cm" then
    put "What is the measurement in inches? "..
    get inch
    put "The measurement in centimeters is approximately " , inch * 2.5 , "cm"
elsif conversion = "cm->i" then
    put "What is the measurement in centimeters? "..
    get centi
    put "The measurement in inches is approximately " , centi/2.5 , "in"
else
    put "Please enter a proper conversion code. "
end if

