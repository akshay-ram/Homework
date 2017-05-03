import GUI

var inputTextField : int
var outputTextField : int
var uppercaseButton : int
var quitButton : int
var inputTextLabel, outputTextLabel : int

procedure makeUpper
    var word : string
    var new_word : string := ""
    word := GUI.GetText (inputTextField)
    for i : 1 .. length (word)
	new_word += Str.Upper (word (i))
    end for
    GUI.SetText (outputTextField, new_word)
end makeUpper

procedure textFieldInput (fieldContents : string)
    makeUpper
end textFieldInput

procedure dummy (fieldContents : string)
    GUI.SetText (outputTextField, fieldContents)
end dummy

inputTextField := GUI.CreateTextField (100, 100, 150, "", textFieldInput)
outputTextField := GUI.CreateTextField (300, 100, 150, "", dummy)
inputTextLabel := GUI.CreateLabel (100, 100 + GUI.GetHeight (inputTextField), "Enter Word Here:")
outputTextLabel := GUI.CreateLabel (300, 100 + GUI.GetHeight (outputTextField), "Your Word in all Uppercase:")
uppercaseButton := GUI.CreateButton (215, 150, 80, "Make Uppercase", makeUpper)
quitButton := GUI.CreateButton (230, 200, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
