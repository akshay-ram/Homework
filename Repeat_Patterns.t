for i : 1 .. 3
    put repeat ("+", 10)
end for
put " "

put repeat ("+", 10)
for i : 1 .. 3
    put "+" ..
    put repeat (" ", 8) ..
    put "+"
end for
put repeat ("+", 10)
put " "

put repeat("*",10)
for i : 1..5
    put repeat (" ",4)..
    put "*"
end for
put " "

for decreasing i : 5..1
    put repeat (" ",i - 1)..
    put "/"
end for
put " "

put "*"..
put repeat (" ",5)..
put "*"
put "**   **"
put "* * * *"
put "*  *  *"
put "*"..
put repeat (" ",5)..
put "*"
