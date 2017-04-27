setscreen ("graphics")

var xcoords1 : array 1 .. 3 of int
var ycoords1 : array 1 .. 3 of int
var xcoords2 : array 1 .. 4 of int
var ycoords2 : array 1 .. 4 of int
var xcoords3 : array 1 .. 4 of int
var ycoords3 : array 1 .. 4 of int
var xcoords4 : array 1 .. 4 of int
var ycoords4 : array 1 .. 4 of int

%triangle part of house
xcoords1 (1) := 100
xcoords1 (2) := 250
xcoords1 (3) := 175
ycoords1 (1) := 200
ycoords1 (2) := 200
ycoords1 (3) := 300
drawpolygon (xcoords1, ycoords1, 3, black)
drawfill (175, 250, 60, black)

%box part of house
drawbox (100, 100, 250, 200, black)
drawfill (150, 150, 60, black)

%small window
drawoval (175, 250, 10, 10, 32)
drawfill (175, 250, 76, 32)

%3D lines
drawline (175, 300, 275, 325, black)
drawline (250, 200, 350, 230, black)
drawline (250, 100, 350, 130, black)

drawline (275, 325, 350, 230, black)
drawline (350, 230, 350, 130, black)

drawfill (325, 250, 13, black)
drawfill (325, 200, 13, black)

%door
drawbox (168, 100, 182, 120, black)
drawfill (175, 110, 64, black)
drawdot (178, 110, black)

%front windows
drawbox (125, 158, 145, 178, blue)
drawfill (130, 160, 77, blue)

drawbox (205, 158, 225, 178, blue)
drawfill (210, 160, 77, blue)

drawline (135, 178, 135, 158, blue)
drawline (125, 168, 145, 168, blue)

drawline (215, 158, 215, 178, blue)
drawline (205, 168, 225, 168, blue)

%Sun
drawoval (50, maxy-30, 15, 15, black)
drawfill (50, maxy-30, yellow, black)

drawline (50, maxy-10, 50, maxy-1, black)
drawline (70, maxy-30, 80, maxy-30, black)
drawline (50, maxy-50, 50, maxy-60, black)
drawline (30, maxy-30, 20, maxy-30, black)

%ground
drawline (0, 171, 100, 171, black)
drawline (0, 171, 0, 0, black)
drawline (0, 0, maxx, 0, black)
drawfillbox (0, 0, 99, 170, 46) 
drawfillbox (100, 0, maxx, 99, 46)
drawline (500, 100, 580, 130, black)
drawline (350, 130, 580, 130, black)
drawline (350, 170, maxx, 170, black)
drawfill (590, 130, 46, black)

%house shadow
%(250,100), (350, 130), (600, 100), (650, 130)
xcoords2 (1) := 250
xcoords2 (2) := 350
xcoords2 (3) := 580
xcoords2 (4) := 500
ycoords2 (1) := 100
ycoords2 (2) := 130
ycoords2 (3) := 130
ycoords2 (4) := 100

drawfillpolygon (xcoords2, ycoords2, 4, 119)

%sky
drawfill (400, 300, 100, black)

%hand
xcoords4 (1) := 250
xcoords4 (2) := 310
xcoords4 (3) := 480
xcoords4 (4) := 480
ycoords4 (1) := 240
ycoords4 (2) := 260
ycoords4 (3) := 260
ycoords4 (4) := 240

drawfillpolygon (xcoords4, ycoords4, 4, 27)
drawpolygon (xcoords4, ycoords4, 4, black)

drawfillbox (250, 240, 500, 220, 8) 
drawfillbox (480, 220, 500, 260, 8)
drawbox (250, 240, 480, 220, black)
drawbox (480, 220, 500, 260, black)

xcoords3 (1) := 480
xcoords3 (2) := 520
xcoords3 (3) := 540
xcoords3 (4) := 500
ycoords3 (1) := 260
ycoords3 (2) := 280
ycoords3 (3) := 280
ycoords3 (4) := 260

drawfillpolygon (xcoords3, ycoords3, 4, 8)
drawpolygon (xcoords3, ycoords3, 4, black)

drawline (540, 280, 540, 240, black)
drawline (540, 240, 500, 220, black)
drawfill (520, 235, 15, black)

%easter egg
drawoval(450, 320, 40, 55, black)
drawfill (450, 300, 11, black)

drawarc (420, 345, 15, 15, 240, 83, black)
drawfill (420, 345, 40, black)

drawoval (445, 305, 12, 12, black)
drawfill (445, 305, 43, black)

drawarc (490, 330, 13, 13, 105, 275, black)
drawfill (480, 325, 47, black)

%door 2


