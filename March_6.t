put "Question #1 Lesson 17"
var areatb, areath : real
var areat : real :=0
var arear : real
var areas : real :=0
var arearl, arearw : real
var areac : real
var shape : string
const PI := 3.14
loop
    put "What shape do you want to find the area of? Exit by entering 'exit'. "..
    get shape
    exit when shape = "exit"
    case shape of
	label "square": 
	    put "What is the side length of your desired square? "..
	    get areas
	    exit when areas <=0
	    areas **=2
	    put "The area of the square is " , areas , "."
	label "triangle":  
	    put "What is the base and height of your desired triangle? "..
	    get areatb, areath
	    exit when areatb <=0 or areath <=0
	    areat := (areatb*areath)/2
	    put "The area of the triangle is " , areat , "."
	label "rectangle":
	    put "What is the length and width of your rectangle? "..
	    get arearl, arearw
	    exit when arearl <=0 or arearw <=0
	    arear := arearl*arearw
	    put "The area of the rectangle is " , arear , "."
	label "circle":
	    put "What is the radius of your circle? "..
	    get areac
	    exit when areac <=0
	    areac := (areac**2)*PI
	    put "The area of the circle is " , areac , "."
	label "bahir":
	    loop
		put "waste"
	    end loop
	label : 
	    put "Sorry, but we are unfamiliar with that shape."
    end case
end loop
put "Thank for using my amazing program. Don't go to other ics nerds' programs (especially people with 95.5% average), because they are trash and waste." 
	   
put "Question #3 Assignment 3"
var name : string
loop
    put "What is your name? Exit by entering 'exit'. "..
    get name
    exit when name = "exit"
    put "Hi " , name , "!"
end loop
put "Thank you for using my program."

put "Question #5 Assignment 5"
var word : string
var wordcount : int :=0
loop
    put "What is the word? Exit by entering a period."..
    get word
    wordcount +=1
    exit when word = "."
end loop
put "The number of words you entered is " , wordcount , "."
put "Thank you for using my program."
    
