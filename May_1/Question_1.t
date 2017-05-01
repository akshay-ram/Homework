import GUI

var textField : int
var echoButton : int
var quitButton : int
var clearScreenButton : int
var fileGUI : string
var textFieldLabel : int

procedure fileCollect
    var fileNumber : int
    var lineNumber := 0
    var line : string
    GUI.Refresh
    fileGUI := GUI.GetText (textField)
    open : fileNumber, fileGUI, get
    if fileNumber > 0 then
	loop
	    lineNumber += 1
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put lineNumber, ": ", line
	end loop
    else
	put "File not found."
    end if
end fileCollect

procedure dummyProc (fieldContents : string)
end dummyProc

procedure clearScreen
    cls
    GUI.Refresh
end clearScreen

textField := GUI.CreateTextField (100, 50, 200, "", dummyProc)
textFieldLabel := GUI.CreateLabel (100, 50 + GUI.GetHeight (textField), "File Name:")
echoButton := GUI.CreateButton (100, 3, 50, "Echo File", fileCollect)
quitButton := GUI.CreateButton (200, 3, 80, "Quit", GUI.Quit)
clearScreenButton := GUI.CreateButton (300, 3, 80, "Clear", clearScreen)

loop
    exit when GUI.ProcessEvent
end loop
