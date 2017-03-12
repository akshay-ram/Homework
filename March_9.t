put "Question #1 Assignment Repetition"
for i : 0..12
    put i, ", " ..
end for
put "13." 

put "Question #2 Assignment Repetition"
var integer : int
put "What is the integer? "..
get integer
for i : 0 .. 13
    put integer , " *", i : 2, " = ", integer*i
end for

put "Question #4 Assignment Repetition" 
var c : int 
c:= 1
for i : 1..15
    color(c)
    put  i , ", "..
    c+=1
end for

put "Question #7 Assignment Repetition"
var star : string
star := "*"
for i : 1..12
    put star
    star +="*"
end for

put "Question #8 Assignment Repetition"
for i : 1..40 by 2
    put i , " -> ", i**2
end for
