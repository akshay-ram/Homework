import GUI

var textField1, textField2 : int
var quitButton : int
var textFieldLabel, textFieldLabel2 : int

procedure echoTextField (textFieldContents : string)
    var message : string
    message := realstr (round (strreal (textFieldContents) / 2.54), 0)
    GUI.SetText (textField2, message)
end echoTextField

procedure setTextField (textFieldContents : string)
    var message : string
    message := realstr (round (strreal (textFieldContents) * 2.54), 0)
    GUI.SetText (textField1, message)
end setTextField

textField1 := GUI.CreateTextField (10, 100, 200, "", echoTextField)
textFieldLabel := GUI.CreateLabel (10, 100 + GUI.GetHeight (textField1), "Centimeters")
textField2 := GUI.CreateTextField (10, 30, 200, "", setTextField)
quitButton := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)
textFieldLabel2 := GUI.CreateLabel (10, 30 + GUI.GetHeight (textField2), "Inches")
loop
    exit when GUI.ProcessEvent
end loop
