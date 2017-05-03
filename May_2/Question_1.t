setscreen ("graphics")

var x, y, button : int
loop
    Mouse.Where (x, y, button)
    drawdot (x,y,black)
end loop
