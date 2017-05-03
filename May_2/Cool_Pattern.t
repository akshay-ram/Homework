var x,y,x1,y1,button : int

Mouse.Where (x,y,button)
loop
    if Mouse.ButtonMoved("down") then
	Mouse.Where (x1,y1,button)
	drawline (x,y,x1,y1,black)
    end if
end loop
