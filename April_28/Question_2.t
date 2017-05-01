var triangleVisible : boolean := false
var buttonnumber, buttonupdown : int
var x,y : int

procedure drawCircle
    drawfilloval (x, y, 20, 20, black)
end drawCircle

% main program

put "Please click on the screen"
loop
    Mouse.ButtonWait ("up", x, y, buttonnumber, buttonupdown)
    triangleVisible := not triangleVisible
    if triangleVisible then
	drawCircle
    else
	cls
	put "Please click on the screen"
    end if
end loop
