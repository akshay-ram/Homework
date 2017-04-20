import GUI
procedure Message
    put "Hi random stranger!"
end Message

var MessageButton : int

MessageButton := GUI.CreateButton(100,50,80,"Message", Message)

var quitButton : int := GUI.CreateButton (200, 50, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop


