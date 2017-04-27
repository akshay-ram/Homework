import GUI

var guessingButton : int
var growingButton : int
var quitButton : int
var backButton : int
var guessingTextField : int
var clickmeGrowButton : int
var textFieldLabel : int
var outputTextField : int
var circleButton : int
var MakeCircleButton : int

procedure circle
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (quitButton)
    GUI.Hide (circleButton)
    GUI.Show (MakeCircleButton)
    GUI.Show (backButton)
    GUI.SetPosition (backButton, 550, 300)
end circle

setscreen ("graphics")
procedure MakeCircle
    var random_size : int
    var random_colour : int
    var random_number : int
    var random_position_x : int
    var random_position_y : int
    for i : 1..1000
        randint (random_size, 10, 300)
        randint (random_colour, 9, 103)
        randint (random_position_x, 0, maxx)
        randint (random_position_y, 0, maxy)
        drawfilloval (random_position_x, random_position_y, random_size, random_size, random_colour)
        GUI.Show (backButton)
        GUI.Show (MakeCircleButton)
    end for
end MakeCircle

procedure guess
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (quitButton)
    GUI.Hide (circleButton)
    GUI.Show (guessingTextField)
    GUI.Show (backButton)
    GUI.Show (textFieldLabel)
    GUI.Show (outputTextField)
end guess
var random : int
randint (random, 1, 100)
procedure predictionNumber (fieldContents : string)
    if strint (fieldContents) > random then
        GUI.SetText (outputTextField, "Lower")
    elsif strint (fieldContents) < random then
        GUI.SetText (outputTextField, "Higher")
    elsif strint (fieldContents) = random then
        GUI.SetText (outputTextField, "Congratulations!")
    end if
end predictionNumber

procedure output (fieldContents : string)
    GUI.SetText (outputTextField, fieldContents)
end output

procedure growing
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (circleButton)
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
    cls
    GUI.Hide (backButton)
    GUI.Hide (guessingTextField)
    GUI.Hide (textFieldLabel)
    GUI.Hide (clickmeGrowButton)
    GUI.Hide (outputTextField)
    GUI.Hide (backButton)
    GUI.Hide (MakeCircleButton)
    GUI.Show (guessingButton)
    GUI.Show (growingButton)
    GUI.Show (quitButton)
    GUI.Show (circleButton)
end goBack

guessingButton := GUI.CreateButton (100, 300, 80, "Guessing Game", guess)
growingButton := GUI.CreateButton (400, 300, 80, "Growing Button", growing)
quitButton := GUI.CreateButton (300, 50, 80, "Quit", GUI.Quit)
backButton := GUI.CreateButton (100, 50, 80, "Back", goBack)
guessingTextField := GUI.CreateTextField (100, 100, 100, "", predictionNumber)
textFieldLabel := GUI.CreateLabel (100, 100 + GUI.GetHeight (guessingTextField), "Your Guess")
clickmeGrowButton := GUI.CreateButtonFull (100, 100, 80, "Click me to Grow!", largerButton, 30, '^D', true)
outputTextField := GUI.CreateTextField (400, 100, 100, "", output)
MakeCircleButton := GUI.CreateButton (500, 50, 80, "Make Circle Pattern", MakeCircle)
circleButton := GUI.CreateButton (235, 300, 80, "Random Circle Game", circle)

GUI.Hide (backButton)
GUI.Hide (guessingTextField)
GUI.Hide (textFieldLabel)
GUI.Hide (clickmeGrowButton)
GUI.Hide (outputTextField)
GUI.Hide (MakeCircleButton)

loop
    exit when GUI.ProcessEvent
end loop


