var circleVisible : boolean := false
var buttonnumber, buttonupdown : int
var x,y : int
var random_colour : int
var x1, y1 : int 

procedure drawCircle
    randint (random_colour, 0, 255)
    drawfilloval (x, y, 20, 20, black)
    x1 := x
    y1 := y
end drawCircle

% main program

put "Please click on the screen"
loop
    Mouse.ButtonWait ("up", x, y, buttonnumber, buttonupdown)
    circleVisible := not circleVisible
    if circleVisible then
	drawCircle
    else
	drawfilloval (x1, y1, 20, 20, random_colour)
    end if
end loop
