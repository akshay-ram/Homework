var triangleVisible : boolean := false
var buttonnumber, buttonupdown : int
var x,y : int
var random_colour : int

procedure drawCircle
    randint (random_colour, 0, 255)
    drawfilloval (x, y, 20, 20, random_colour)
    drawfilloval (100, 100, 20, 20, random_colour)
end drawCircle

% main program

put "Please click on the screen"
loop
    Mouse.ButtonWait ("up", x, y, buttonnumber, buttonupdown)
    if not (triangleVisible) then
	drawCircle
    else
	cls
	put "Please click on the screen"
    end if
end loop

