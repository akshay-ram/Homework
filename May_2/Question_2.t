var x,y,x1,y1,button : int

loop
    if Mouse.ButtonMoved("down") then
	Mouse.Where (x,y,button)
	x1 := x
	y1 := y
	drawline (x,y,x1,y1,black)
    end if
    exit when Mouse.ButtonMoved ("up")
end loop
