import GUI

const BUTTON_WIDTH := 150
const BUTTON_HEIGHT := 20

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
var button_height : int
var button_width : int

procedure home
    button_height := BUTTON_HEIGHT
    button_width := BUTTON_WIDTH
    GUI.SetSize (clickmeGrowButton, button_width, button_height)
    GUI.SetText (guessingTextField, "")
    GUI.SetText (outputTextField, "")
    GUI.Hide (backButton)
    GUI.Hide (MakeCircleButton)
    GUI.Hide (clickmeGrowButton)
    GUI.Hide (guessingTextField)
    GUI.Hide (outputTextField)
    GUI.Hide (textFieldLabel)
    GUI.Show (growingButton)
    GUI.Show (circleButton)
    GUI.Show (guessingButton)
    GUI.Show (quitButton)
    cls
    GUI.Refresh
end home

procedure circle
    GUI.Hide (guessingButton)
    GUI.Hide (growingButton)
    GUI.Hide (quitButton)
    GUI.Hide (circleButton)
    GUI.Show (MakeCircleButton)
    GUI.Show (backButton)
    GUI.SetPosition (backButton, 550, 300)
    cls
    GUI.Refresh
end circle

setscreen ("graphics")
procedure MakeCircle
    var random_size : int
    var random_colour : int
    var random_number : int
    var random_position_x : int
    var random_position_y : int
    for i : 1 .. 1000
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
    cls
    GUI.Refresh
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
    button_height += 10
    button_width += 10
    GUI.SetSize (clickmeGrowButton, button_width, button_height)
end largerButton

guessingButton := GUI.CreateButton (100, 300, 80, "Guessing Game", guess)
growingButton := GUI.CreateButton (400, 300, 80, "Growing Button", growing)
quitButton := GUI.CreateButton (300, 50, 80, "Quit", GUI.Quit)
backButton := GUI.CreateButton (100, 50, 80, "Back", home)
guessingTextField := GUI.CreateTextField (100, 100, 100, "", predictionNumber)
textFieldLabel := GUI.CreateLabel (100, 100 + GUI.GetHeight (guessingTextField), "Your Guess")
clickmeGrowButton := GUI.CreateButtonFull (100, 100, 100, "Click me to Grow!", largerButton, 30, '^D', true)
outputTextField := GUI.CreateTextField (400, 100, 100, "", output)
MakeCircleButton := GUI.CreateButton (500, 50, 80, "Make Circle Pattern", MakeCircle)
circleButton := GUI.CreateButton (235, 300, 80, "Random Circle Game", circle)

home

loop
    exit when GUI.ProcessEvent
end loop



