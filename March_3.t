put "Question #13 pg. 100"
var food : real
var dj : real
var hall : real
var decorations : real
var waiting_staff : real
var total : real := 0
const TICKET_COST : int := 65
const MISCELLANEOUS : int := 100
put "What is the cost for food, DJ, hall, decorations, and waiting staff? " ..
get food, dj, hall, decorations, waiting_staff
total := food + dj + hall + decorations + waiting_staff + MISCELLANEOUS
if total mod TICKET_COST = 0 then
    put "You need to sell ", total div TICKET_COST, " tickets to break even."
else
    put "You need to sell ", total div TICKET_COST + 1, " tickets to break even."
end if

put "Question #14 pg. 100"
var name : string
var marked_out_of1 : int
var mark_received1 : real
var test1 : real := 0
var marked_out_of2 : int
var mark_received2 : real
var test2 : real := 0
var marked_out_of3 : int
var mark_received3 : real
var test3 : real := 0
var marked_out_of4 : int
var mark_received4 : real
var test4 : real := 0
var marked_out_of5 : int
var mark_received5 : real
var test5 : real := 0
var average : real := 0
put "What is your name? " ..
get name : *
put "What is the mark out of on test 1? " ..
get marked_out_of1
put "What mark did you recieve? " ..
get mark_received1
put "What is the mark out of on test 2? " ..
get marked_out_of2
put "What mark did you recieve? " ..
get mark_received2
put "What is the mark out of on test 3? " ..
get marked_out_of3
put "What mark did you recieve? " ..
get mark_received3
put "What is the mark out of on test 4? " ..
get marked_out_of4
put "What mark did you recieve? " ..
get mark_received4
put "What is the mark out of on test 5? " ..
get marked_out_of5
put "What mark did you recieve? " ..
get mark_received5
test1 := (mark_received1 / marked_out_of1) * 100
test2 := (mark_received2 / marked_out_of2) * 100
test3 := (mark_received3 / marked_out_of3) * 100
test4 := (mark_received4 / marked_out_of4) * 100
test5 := (mark_received5 / marked_out_of5) * 100
put "Your mark on test 1 is ", test1, "%."
put "Your mark on test 2 is ", test2, "%."
put "Your mark on test 3 is ", test3, "%."
put "Your mark on test 4 is ", test4, "%."
put "Your mark on test 5 is ", test5, "%."
average := (test1 + test2 + test3 + test4 + test5) / 5
put "Your average is ", average, "%."

put "Question #1 pg.174"
var last_name : string
loop
    put "What is your last name? " ..
    get last_name
    last_name := Str.Upper (last_name)
    if last_name (1) < "I" then
	put "Your name is in group 1."
    else
	put "Your name is in group 2."
    end if
end loop

put "Question #2 pg. 174"
var item : real
const TAX := 0.07
put "What is your item cost? $" ..
get item
if item > 4 then
    item += (TAX / item) * 100
    put "Your total is $", item, "."
else
    put "Your total is $", item, "."
end if

put "Question #6 pg. 174"
var occasion : string
put "What is the occassion? " ..
get occasion
case occasion of
    label "christmas", "Christmas", "CHRISTMAS" :
	put "Happy Christmas!"
    label "halloween", "Halloween", "HALLOWEEN" :
	put "Happy Halloween!"
    label "easter", "Easter", "EASTER" :
	put "Happy Easter!"
    label "new year", "New Year", "NEW YEAR" :
	put "Happy New Year!"
    label "diwali", "Diwali", "DIWALI" :
	put "Happy Diwali!"
    label "birthday", "Birthday", "BIRTHDAY" :
	put "Happy Birthday!"
    label :
	put "Sorry we are not familiar with that occasion. Please check your spelling and try again."
end case


put "Question #7 pg.174"
var cost1 : real
var cost2 : real
var cost3 : real
var totall : real := 0
const TAX1 := 0.17
const TAX2 := 0.24
const TAX3 := 0.29
put "What is cost of the first item? " ..
get cost1
put "What is cost of the second item? " ..
get cost2
put "What is cost of the third item? " ..
get cost3
total := (cost1 + (TAX1 / cost1 * 100)) + (cost2 + (TAX2 / cost2 * 100)) + (cost3 + (TAX3 / cost3 * 100))
put "The total cost is $", total : 0 : 2, "."

put "Question #17 pg. 176"
var mark1 : real
var mark2 : real
var mark3 : real
var mark4 : real
var mark5 : real
put "What is the 1st mark? " ..
get mark1
if mark1 >= 0 and mark1<= 100 then
    if mark1 >= 70 and mark1<= 100 then
	put "Good"
    elsif mark1 >= 50 and mark1<= 69 then
	put "Satisfactory"
    end if
else
    put "That is not a valid mark."
end if
put "What is the 2nd mark? " ..
get mark2
if mark2 >= 0 and mark2<= 100 then
    if mark2 >= 70 and mark2<= 100 then
	put "Good"
    elsif mark2 >= 50 and mark2<= 69 then
	put "Satisfactory"
    end if
else
    put "That is not a valid mark."
end if 
put "What is the 3rd mark? " ..
get mark3
if mark3 >= 0 and mark3<= 100 then
    if mark3 >= 70 and mark3<= 100 then
	put "Good"
    elsif mark3 >= 50 and mark3<= 69 then
	put "Satisfactory"
    end if
else
    put "That is not a valid mark."
end if
put "What is the 4th mark? " ..
get mark4
if mark4 >= 0 and mark4<= 100 then
    if mark4 >= 70 and mark4<= 100 then
	put "Good"
    elsif mark4 >= 50 and mark4<= 69 then
	put "Satisfactory"
    end if
else
    put "That is not a valid answer."
end if 
 
put "What is the 5th mark? " ..
get mark5
if mark5 >= 0 and mark5<= 100 then
    if mark5 >= 70 and mark5<= 100 then
	put "Good"
    elsif mark5 >= 50 and mark5<= 69 then
	put "Satisfactory"
    end if
else
    put "That is not a valid answer."
end if
