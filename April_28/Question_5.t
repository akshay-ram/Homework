var circleVisible : boolean := true
var buttonnumber, buttonupdown : int
var x, y : int
var random_colour : int
var x1, y1 : int

put "Please click on the screen"
loop
    Mouse.ButtonWait ("up", x, y, buttonnumber, buttonupdown)
    if circleVisible then
	x1 := x
	y1 := y
	drawfilloval (x, y, 100, 100, black)
	circleVisible := false
    elsif sqrt (((x1 - x) ** 2 + (y1 - y) ** 2)) > 100 then
	drawfilloval (x, y, 100, 100, black)
	x1 := x
	y1 := y
    elsif sqrt (((x1 - x) ** 2 + (y1 - y) ** 2)) <= 100 then
	randint (random_colour, 1, 255)
	drawfilloval (x1, y1, 100, 100, random_colour)
    end if
end loop
