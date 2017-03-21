put "Question #1 Lesson 21"
for decreasing row : 5..1
    for i : 1..row-1
	put "*"..
    end for
    put "*"
end for
	
put "Question #2 Lesson 21 (Method 1)"
for decreasing row : 10..2 by 2
    for i : 1..row
	put "*"..
    end for
    put ""
end for 

put "Question #2 Lesson 21 (Method 2)"
for decreasing row : 5..1 
    for i : 1..row*2
	put "*"..
    end for
    put ""
end for

put "Question #3 Lesson 21"
for row : 1..8
    for i : 1..10
	put "* "..
    end for
    put ""
end for

put "Question #4 Lesson 21"
var rows : int
loop
    put "Number of Rows: "..
    get rows
    exit when rows = 0
    for row : 1..rows
	for i : 1..10
	    put "* "..
	end for
    put ""
    end for
end loop

put "Question #5 Lesson 21"
for row : 1..4
    for decreasing i : row*(-1)+4..1
	put " "..
    end for
    for i : 1..row*2-1
	put "$"..
    end for
    for decreasing ii : row*(-1)+4..1
	put " "..
    end for
    put ""
end for

put "Question #6 Lesson 21"
for row : 1..5
    for decreasing ii : row*(-1)+5..1
	put " "..
    end for
    for i : 1..row
	put row ..
    end for
    put ""
end for

put "Question #7 Lesson 21 (Unfinished)"
for row : 1..5
    for decreasing i : row*(-1)+5..1
	put " "..
    end for
    for decreasing ii : row*(-1)+5..1
	put " "..
    end for
    put "" 
end for

put "Question #8 Lesson 21"
for row : 1..9
    for i : 1..9
	put row*i : 3 ..
    end for
    put ""
end for
