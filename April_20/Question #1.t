import GUI
procedure Message
    put "Hi random stranger!"
end Message

var MessageButton : int

MessageButton := GUI.CreateButton(100,50,80,"Message", Message)

loop
    exit when GUI.ProcessEvent
end loop
