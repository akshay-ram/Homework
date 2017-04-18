put "Question #1 Lesson 35"
procedure percent (lines : int)
    for decreasing i : lines .. 1
	put repeat ("%", i) ..
	put repeat ("&", i)
    end for
end percent

percent (5)

put "Question #2 Lesson 35"
procedure slash (lines : int)
    for i : 1 .. lines
	put repeat ("/\\", i)
    end for
end slash

slash (5)

put "Question #3 Lesson 35"
procedure triangle (lines : int)
    for decreasing i : lines .. 1
	put repeat (" ", lines-i) ..
	put repeat ("*", i)
    end for
end triangle

triangle (6)

put "Question #4 Lesson 35"
function triangle_perimeter (side1 : int, side2 : int, side3 : int) : int
    result side1 + side2 + side3
end triangle_perimeter
  
function triangle_area (base : int, height : int) : real
    result (base*height)/2
end triangle_area

function rectangle_perimeter (side1 : int, side2 : int) : int
    result 2*(side1) + 2*(side2)
end rectangle_perimeter

function rectangle_area (side1 : int, side2 : int) : real
    result side1*side2
end rectangle_area

function circle_circumference (diameter : int) : real
    result 3.14*diameter
end circle_circumference

function circle_area (diameter : int) : real
    result (3.14/4) * (diameter**2)
end circle_area

var diameter1 : int
var side1t, side2t, side3t : int
var length2, width2 : int
var length1, width1 : int
var base, height : int
var shape : string
var ap : string

put "What shape do you want to calculate? "..
get shape
case shape of
    label "triangle":
	put "Do you want to calculate area or perimeter? "..
	get ap
	if ap = "area" then
	    put "What is the base and height? "..
	    get base, height
	    put triangle_area (base, height)
	elsif ap = "perimeter" then
	    put "What are the three sides? "..
	    get side1t, side2t, side3t 
	    put triangle_perimeter (side1t, side2t, side3t)
       end if
    label "rectangle":
	put "Do you want to calculate area or perimeter? "..  
	get ap
	if ap = "area" then
	    put "What are the length and width of the rectangle? "..
	    get length1, width1
	    put rectangle_area (length1, width1)
	elsif ap = "perimeter" then
	    put "What are the length and width of the rectangle? "..
	    get length2, width2
	    put rectangle_perimeter (length2, width2)
	end if
    label "circle":
	put "Do you want to calculate the area or perimeter? "..
	get ap
	if ap = "area" then
	    put "What is the diameter of the circle? "..
	    get diameter1
	    put circle_area (diameter1)
	elsif ap = "perimeter" then
	    put "What is the diameter? "..
	    get diameter1
	    put circle_circumference(diameter1)
	end if
   label: 
	put "Please enter a proper shape."
end case

put "Question #5 Lesson 35"
function isArmstrong (number : int) : boolean
    var total : int :=0
    for i : 1..length(intstr(number))
	total += strint(intstr(number)(i))**3
    end for
    if total = number then
	result true
    else
	result false
    end if
end isArmstrong

var number1 : int  
var yn : boolean
for i : 1..10000
    number1 := i
    yn := isArmstrong (number1)
    if yn = true then
	put number1
    end if
    number1 :=0
    yn := false
end for

put "Question #6 Lesson 35"
function isPalindrome (number : string) : boolean
    var new_number : string :="" 
    for decreasing i : length(number) .. 1
	new_number += number(i)
    end for
    if new_number = number then
	result true
    else
	result false
    end if
end isPalindrome

var number6 : string
var yn6 : boolean
for i : 1..10000
    number6 :=intstr(i)
    yn6 := isPalindrome (number6)
    if yn6 = true then
	put number6
    end if
    number6 :=""
    yn6 := false
end for
     
