import GUI
setscreen ("graphics")
procedure MakeCircle
    var random_size : int
    var random_colour : int
    var random_number : int
    var random_position_x : int
    var random_position_y : int
    randint (random_size, 10, 300)
    randint (random_colour, 1, 255)
    randint (random_position_x, 1, 300)
    randint (random_position_y, 1, 300)
    drawfilloval (random_position_x, random_position_y, random_size, random_size, random_colour)
end MakeCircle

var MakeCircleButton : int

MakeCircleButton := GUI.CreateButton(525, 50, 80, "Make a Circle", MakeCircle)

var quitButton : int := GUI.CreateButton (550, 350, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
