import GUI

var textField : int
var quitButton : int
var fieldLabel : int
procedure higherNumber (fieldContents : string)
    var error_message : string := "Error. Please enter a number"
    var new_number : int
    if strintok (fieldContents) then
	new_number := strint(fieldContents) + 1
	GUI.SetText (textField, intstr (new_number))
    else
	GUI.SetText (textField, error_message)
    end if
end higherNumber

textField := GUI.CreateTextField (10, 30, 200, "", higherNumber)
quitButton := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)
fieldLabel := GUI.CreateLabel(10,30 + GUI.GetHeight(textField), "Please enter a number.")
loop
    exit when GUI.ProcessEvent
end loop
