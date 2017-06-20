import GUI

var button1, button2, button3, button4 : int
var quitButton : int
var restartbutton : int
var outputTextField : int
var random : int 

procedure dummy (textFieldContents : string)
end dummy

procedure restartgame
    randint (random, 1, 4)
end restartgame

procedure click1 
    if random = 1 then
	GUI.SetText (outputTextField, "Congradulations! You are correct!")
    else
	GUI.SetText (outputTextField, "Wrong! The number was ")
	Time.Delay(1000)
	GUI.SetText (outputTextField, intstr(random, 0))
    end if
    restartgame
end click1

procedure click2 
    if random = 2 then
	GUI.SetText (outputTextField, "Congradulations! You are correct!")
    else
	GUI.SetText (outputTextField, "Wrong! The number was ")
	Time.Delay(1000)
	GUI.SetText (outputTextField, intstr(random, 0))
    end if
    restartgame
end click2

procedure click3 
    if random = 3 then
	GUI.SetText (outputTextField, "Congradulations! You are correct!")
    else
	GUI.SetText (outputTextField, "Wrong! The number was ")
	Time.Delay(1000)
	GUI.SetText (outputTextField, intstr(random, 0))
    end if
    restartgame
end click3

procedure click4 
    if random = 4 then
	GUI.SetText (outputTextField, "Congradulations! You are correct!")
    else
	GUI.SetText (outputTextField, "Wrong! The number was ")
	Time.Delay(1000)
	GUI.SetText (outputTextField, intstr(random, 0))
    end if
    restartgame
end click4

button1 := GUI.CreateButton (100, 100, 70, "1", click1)
button2 := GUI.CreateButton (170, 100, 70, "2", click2)
button3 := GUI.CreateButton (240, 100, 70, "3", click3)
button4 := GUI.CreateButton (310, 100, 70, "4", click4) 
quitButton := GUI.CreateButton (200, 200, 70, "Quit", GUI.Quit)
outputTextField := GUI.CreateTextField (100, 300, 280, " ", dummy)  

restartgame
loop
    exit when GUI.ProcessEvent
end loop
