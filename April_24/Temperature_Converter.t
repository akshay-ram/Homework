import GUI

var celsiusTextField : int
var fahrenheitTextField : int
var convertcButton : int
var convertfButton : int
var quitButton : int
var celsiusLabel : int
var fahrenheitLabel : int

View.Set ("graphics:500;200")
Window.Set (defWinId, "title: Temperature Converter")
GUI.SetBackgroundColour (red)

procedure celsius_to_fahrenheit
    var fahrenheit : string := GUI.GetText (celsiusTextField)
    fahrenheit := realstr (strreal (fahrenheit) * 9 / 5 + 32, 0)
    GUI.SetText (fahrenheitTextField, fahrenheit)
end celsius_to_fahrenheit

procedure fahrenheit_to_celsius
    var celsius : string := GUI.GetText (fahrenheitTextField)
    celsius := realstr((strreal (celsius) - 32) * 5 / 9, 0)  
    GUI.SetText (celsiusTextField, celsius)
end fahrenheit_to_celsius

procedure dummy (TextFieldContents : string)
end dummy

convertcButton := GUI.CreateButton (210, 40, 80, "Convert -->", celsius_to_fahrenheit)
convertfButton := GUI.CreateButton (210, 65, 80, "<-- Convert", fahrenheit_to_celsius)
celsiusTextField := GUI.CreateTextField (40, 20, 100, "", dummy)
fahrenheitTextField := GUI.CreateTextField (360, 20, 100, "", dummy)
celsiusLabel := GUI.CreateLabel (40, 20 + GUI.GetHeight(celsiusTextField), "Celsius")
fahrenheitLabel := GUI.CreateLabel (360, 20 + GUI.GetHeight(fahrenheitTextField), "Fahrenheit")
quitButton := GUI.CreateButton (210, 90, 90, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
