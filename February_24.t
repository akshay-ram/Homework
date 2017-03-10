var inches, centimeters: real
put "Insert the amount in inches "..
get inches
put "In centimeters that is " , inches*2.54 , "cm."

var birth_year: int
put "What is your birth year? "..
get birth_year
put "Your age is " , 2017-birth_year , "."

var name, street_adress, city, province, postal_code : string 
put "What is your name? "..
get name
put "What is your street address? "..
get street_adress:*
put "What city are you from? "..
get city
put "What province are you from? "..
get province
put "What is your postal code? "..
get postal_code
put "Your name is " , name , " and your adress is " , street_adress , ", " , city , ", " , province , ", " , postal_code , "."

var name1, name2, name3, name4, name5 : string
put "What is your full name? "..
get name1
put "What is yout full name? "..
get name2
put "What is yout full name? "..
get name3
put "What is yout full name? "..
get name4
put "What is yout full name? "..
get name5
put "Here are the names in reverse order: " , name5 , ", " , name4 , ", " , name3 , ", " , name2 , ", " , name1 , "."

var number : int
put "What is the number? "..
get number
if number mod 7=0 then
    put "Your number is a multiple of 7"
else
    put "Your number is not multiple of 7"
end if

var number_of_students : int
var remainder : int
var groups :int 
put "How many students do you have in your class? "..
get number_of_students
remainder := number_of_students mod 4
groups := number_of_students div 4
if number_of_students mod 4 = 0 then
    put "You can have " , groups , " groups of 4 and there will be 0 extra students left-over."
else
    put "You can have " , groups , " groups of 4 and there will be " , remainder , " extra student(s) left-over." 
end if
