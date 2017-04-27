setscreen ("graphics")

% draw outline of face, to make a thick line make a solid black circle and then overwrite
% the inside with white, notice we use ovals with the x and y radius the same to create
% circles
drawfilloval (200, 200, 80, 80, black)
drawfilloval (200, 200, 75, 75, white)

% eyes
drawfilloval (175, 225, 4, 4, purple)
drawfilloval (225, 225, 4, 4, purple)

% nose
drawline (203, 215, 190, 195, black)
drawline (192, 195, 203, 195, black)

% mouth
drawarc (200, 150, 25, 20, 360, 180, red)

%ears
drawarc (275, 200, 20, 20, 270, 90, black)
drawarc (125, 200, 20, 20, 90, 270, black)

%hair

%eyebrows
drawarc (175, 240, 20, 20, 380, 150, black)
drawline (210, 235, 240, 235, black)
