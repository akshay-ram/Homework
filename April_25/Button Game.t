import GUI

var guessingButton : int
var growingButton : int
var quitButton : int
var backButton : int
var guessingTextField : int
var clickmeGrowButton : int
var textFieldLabel : int

procedure guess
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (quitButton)
    GUI.Show (guessingTextField)
    GUI.Show (backButton)
    GUI.Show (textFieldLabel)
end guess

procedure predictionNumber (fieldContents : string)
    var random : int
    randint (random, 1, 100)
    loop
	exit when strint (fieldContents) = random
	if strint (fieldContents) > random then
	    put "Lower"
	elsif strint (fieldContents) < random then
	    put "Higher"
	end if
    end loop
    put "Congradulations!"
end predictionNumber

procedure output (fieldContents : string)
    GUI.SetText (outputTextField, fieldContents)
end output

procedure growing
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (quitButton)
    GUI.Show (clickmeGrowButton)
    GUI.Show (backButton)
end growing

procedure largerButton
    var width : int := GUI.GetHeight (clickmeGrowButton)
    var height : int := GUI.GetWidth (clickmeGrowButton)
    width += 10
    height += 10
    GUI.SetSize (clickmeGrowButton, width, height)
end largerButton

procedure goBack
    GUI.Hide (backButton)
    GUI.Hide (guessingTextField)
    GUI.Hide (textFieldLabel)
    GUI.Hide (clickmeGrowButton)
    GUI.Hide (outputTextField)
    GUI.Hide (backButton)
    GUI.Show (guessingButton)
    GUI.Show (growingButton)
    GUI.Show (quitButton)
end goBack

guessingButton := GUI.CreateButton (100, 300, 80, "Guessing Game", guess)
growingButton := GUI.CreateButton (400, 300, 80, "Growing Button", growing)
quitButton := GUI.CreateButton (300, 50, 80, "Quit", GUI.Quit)
backButton := GUI.CreateButton (100, 50, 80, "Back", goBack)
guessingTextField := GUI.CreateTextField (100, 100, 100, "", predictionNumber)
textFieldLabel := GUI.CreateLabel (100, 100 + GUI.GetHeight (guessingTextField), "Your Guess")
clickmeGrowButton := GUI.CreateButtonFull (100, 100, 80, "Click me to Grow!", largerButton, 30, '^D', true)

GUI.Hide (backButton)
GUI.Hide (guessingTextField)
GUI.Hide (textFieldLabel)
GUI.Hide (clickmeGrowButton)

loop
    exit when GUI.ProcessEvent
end loop


