put "Question #1 Lesson 36"
procedure isTriangle (angle1 : real, angle2 : real, angle3 : real)
    if angle1 + angle2 + angle3 not= 180 then
	put "Enter three angles that add up to 180 degrees."
    elsif angle1 = angle2 and angle2 = angle3 then
	put "Your triangle is an equilateral."
    elsif angle1 = angle2 or angle2 = angle3 or angle3 = angle1 then
	put "Your triangle is isoceles."
    else
	put "Your triangle is scalene."
    end if
end isTriangle

var angle1, angle2, angle3 : real

put "What are the three angles? " ..
get angle1, angle2, angle3
isTriangle (angle1, angle2, angle3)

put "Question #2 Lesson 36"
procedure maximum (number : int)
    for i : 1 .. number
	for ii : 1 .. i
	    put i ..
	end for
	put " " ..
    end for
end maximum

var number : int
put "What is the number? " ..
get number
maximum (number)

put "Question #3 Lesson 36"
procedure T (width : int, height : int)
    if width mod 2 not= 1 then
	put "Your width is not an odd number."
    else
	put repeat ("*", width)
	for i : 1 .. height - 1
	    put repeat (" ", width div 2) ..
	    put "*"
	end for
    end if
end T
T (7, 5)

put "Question #4 Lesson 36"
function isFactor (number1 : int, number2 : int) : boolean
    if number2 mod number1 = 0 then
	result true
    else
	result false
    end if
end isFactor

var number41, number42 : int
put "What are the numbers? " ..
get number41, number42
put isFactor (number41, number42)

put "Question #5 Lesson 36"
function remove (word : string, character : char) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if index (word (i), character) = 0 then
	    new_word += word (i)
	end if
    end for
    result new_word
end remove

var word1 : string
var letter : char
put "What is the word? " ..
get word1
put "What is the letter to remove? " ..
get letter
put remove (word1, letter)

put "Question #6 Lesson 36"
function middle (word : string) : string
    var middle_letters : string := ""
    if length (word) mod 2 = 1 then
	middle_letters += word (* -length (word) div 2)
    elsif length (word) mod 2 = 0 then
	middle_letters += word (* -length (word) div 2)
	middle_letters += word (* -length (word) div 2 + 1)
    end if
    result middle_letters
end middle

var word6 : string
put "What is the word? " ..
get word6
put middle (word6)

put "Question #7 Lesson 36 (Actual Answer)"
procedure fraction (numerator : int, denominator : int)
    for decreasing i : numerator * denominator .. 1
	if numerator mod i = 0 and denominator mod i = 0 then
	    put " " ..
	    put numerator div i
	    put "---"
	    put " " ..
	    put denominator div i
	    exit
	end if
    end for
end fraction

var numerator7a, denominator7a : int
put "What is the numerator and denominator? " ..
get numerator7a, denominator7a
fraction (numerator7a, denominator7a)
 
put "Question #7 Lesson 36 (My attempt at this question that doesn't work)"
procedure fraction (numerator : int, denominator : int)
    var new_numerator : int 
    var new_denominator : int 
    var gcf : int 
    loop
	for i : 2 .. denominator
	    if numerator mod i = 0 then
		gcf := i
		new_numerator := numerator div i
	    end if
	    if denominator mod gcf = 0 then
		new_denominator := denominator div i
	    end if
	    if new_denominator not= 0 and new_numerator not= 0 then
		exit
	    end if
	end for
	exit when new_denominator mod gcf not= 0 and new_numerator mod gcf not= 0
    end loop
    put new_numerator
    put "--"
    put new_denominator
end fraction

var numerator7b, denominator7b : int
put "What is the numerator and denominator? " ..
get numerator7b, denominator7b
fraction (numerator7b, denominator7b)

