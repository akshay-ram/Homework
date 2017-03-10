put "Question #1 Lesson 14"
var number : int
put "What is the number? "..
get number
if number mod 7=0 then
    put "Your number is a multiple of 7"
else
    put "Your number is not multiple of 7"
end if

put "Question #2 Lesson 14"
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

put "Question #3"
var price : real
var price_without_tax : real
const PST := 0.03
const GST := 0.07
put "What is the price of the item in dollars? $" ..
get price
price_without_tax := price
price += PST + GST * price
if price >= 4.99 then
    put "Your price including tax is $", price, "."
else
    put "Your price is $", price_without_tax, "."
end if

put "Question #4"
var mark : real
put "What is your mark out of 100? " ..
get mark
if mark >= 50 then
    put "You passed."
else
    put "You failed."
end if

put "Question #5"
var colour_given : string
put "What is the colour? " ..
get colour_given : *
if colour_given = "red" then
    colour (red)
    put "red"
elsif colour_given = "blue" then
    colour (blue)
    put "blue"
else
    put colour_given
end if

put "Question #6"
var answer : string
var centimeters : real
var inches : real
const CENTI := 0.39701
const INCH := 2.54
put "Do you want to convert from centimeters to inches (write ic) or inches to centimeters (write ci) " ..
get answer
if answer = "ic" then
    put "What is the measurement in centimeters you wish to convert? " ..
    get centimeters
    centimeters *= CENTI
    put "In inches that is ", centimeters, "in."
else
    answer := "ci"
    put "What is the measurement inches you wish to convert? " ..
    get inches
    inches *= INCH
    put "In centimeters that is ", inches, "cm."
end if

put "Question #7"
var country : string
var address_1 : string
var address_2 : string
var ppc : string
put "What is your full name, street address, city? " ..
get address_1 : *
put "What country are you from? " ..
get country : *
if country = "Canada" then
    put "What is your province and postal code? " ..
    get ppc : *
    put "Your full address is ", address_1, ", ", ppc, ", ", country, "."
elsif country = "USA" then
    put "What is your state and zip code? " ..
    get address_2 : *
    put "Your full address is ", address_1, ", ", ppc, ", ", country, "."
else
    put "I'm sorry but we don't recognize that country. Please check your spelling and try again. If that's not the case, please exit the program."
end if

put "Question #8"
var radius : real
var area : real := 0
var diameter : real := 0
var circumference : real := 0
const PI := 3.14
put "What is the radius of the circle in meters? " ..
get radius
diameter += radius * 2
circumference += PI * diameter
area += PI * radius ** 2
put "The radius is ", radius, "m, the diameter is ", diameter, "m, the circumference is ", circumference, "m, and the area is ", area, "."

put "Question #10"
var Price : real
var total : real := 0
var taxable : boolean
const GST1 := 0.07
const PST1 := 0.03
put "What is the price of the item? " ..
get price
put "Is this item taxable? (true or false) " ..
get taxable
if taxable then
    total += ((GST + PST) * price) + price
    put "The price is $", price, ", the gst is ", GST * 100, "%, the pst is ", PST * 100, "%, and your total is $", total, "."
else
    put "Your total is ", price, "."
end if
