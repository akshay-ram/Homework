import GUI

var clickmeButton1, clickmeButton2, clickmeButton3 : int
var quitButton : int

procedure home
    var randomclick : int
    randint (randomclick, 1,3)
    case randomclick of
	label 1 : GUI.Show (clickmeButton1)
		    GUI.Show (clickmeButton2)
		    GUI.Hide (clickmeButton3)
	label 2 : GUI.Hide (clickmeButton1)
		    GUI.Show (clickmeButton2)
		    GUI.Show (clickmeButton3)
	label 3 : GUI.Show (clickmeButton1)
		    GUI.Hide (clickmeButton2)
		    GUI.Show (clickmeButton3)
	end case
end home

procedure button1
    home
end button1

procedure button2
    home
end button2

procedure button3
    home
end button3

procedure Quit
    GUI.Show (clickmeButton1)
    GUI.Show (clickmeButton2)
    GUI.Show (clickmeButton3)
    GUI.Quit
end Quit

clickmeButton1 := GUI.CreateButton (100, 100, 80, "Click Me", button1)
clickmeButton2 := GUI.CreateButton (180, 100, 80, "Click Me", button2)
clickmeButton3 := GUI.CreateButton (260, 100, 80, "Click Me", button3)
quitButton := GUI.CreateButton (400, 100, 80, "Quit" , GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
