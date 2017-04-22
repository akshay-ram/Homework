import GUI

var textField1, textField2 : int
var quitButton : int
var fieldLabel : int 

procedure enterTextField (fieldContents : string)
    var new_word : string := ""
    var word : string
    word := GUI.GetText (textField1)
    for i : 1 .. length (word)
	if index ("aeiouAEIOU", word (i)) = 0 then
	    new_word += word (i)
	end if
    end for
    GUI.SetText(textField2,new_word)
end enterTextField

procedure outputTextField (fieldContents : string)
    var message : string
    message := fieldContents
    GUI.SetText(textField2,message) 
end outputTextField

textField1 := GUI.CreateTextField (10, 100, 200, "", enterTextField)
textField2 := GUI.CreateTextField (10, 30, 200, "", outputTextField)
quitButton := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)
fieldLabel := GUI.CreateLabel(10,100 + GUI.GetHeight(textField1), "Enter Word") 
loop
    exit when GUI.ProcessEvent
end loop
