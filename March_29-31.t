put "Question #1 Lesson 27"
var word1 : string
var first_word1 : string := "~"
loop
    put "What is the word? " ..
    get word1
    exit when word1 = "000done"
    if word1 < first_word1 then
        first_word1 := word1
    end if
end loop
put "The first word is ", first_word1, "."

put "Question #1 Part a Lesson 27"
var word1a : string
var first_word1a : string := "A"
loop
    put "What is the word? " ..
    get word1a
    exit when word1a = "000done"
    if word1a > first_word1a then
        first_word1a := word1a
    end if
end loop
put "The first word is ", first_word1a, "."

put "Question #1 Part b Lesson 27"
var word1b : string
var first_word1b : string := "~"
loop
    put "What is the word? " ..
    get word1b
    exit when word1b = "000done"
    if length (word1b) = 7 then
        if word1b < first_word1b then
            first_word1b := word1b
        end if
    end if
end loop
put "The first word is ", first_word1b, "."

put "Question #1 Part c Lesson 27"
var word1c : string
var first_word1c : string := "A"
loop
    put "What is the word? " ..
    get word1c
    exit when word1c = "000done"
    if length (word1c) = 3 then
        if word1c > first_word1c then
            first_word1c := word1c
        end if
    end if
end loop
put "The first word is ", first_word1c, "."

put "Question #1 Part d Lesson 27"
var word1d : string
var longest1d : string := ""
loop
    put "What is the word? " ..
    get word1d
    exit when word1d = "000done"
    if length (word1d) > length (longest1d) then
        longest1d := word1d
    end if
end loop
put longest1d

put "Question #1 Part e Lesson 27"
var word1e : string
var longest1e : string := ""
put "What is the word? " ..
get word1e
longest1e := word1e
loop
    put "What is the word? " ..
    get word1e
    exit when word1e = "000done"
    if length (word1e) < length (longest1e) then
        longest1e := word1e
    end if
end loop
put longest1e

put "Question #1 Part f Lesson 27"
var word1f : string
var counter : int := 0
var total : int := 0
var average : real := 0
loop
    put "What is the word? " ..
    get word1f
    exit when word1f = "000done"
    counter += 1
    total += length (word1f)
end loop
if counter not= 0 then
    average := total / counter
    put "The average number of letters is ", average, "."
end if

put "Question #1 Part g Variation 1 Lesson 27"
var word1ga : string
var longest1ga : string := ""
loop
    put "What is the word? " ..
    get word1ga
    exit when word1ga = "000done"
    if index (word1ga, "s") not= 0 then
        if length (word1ga) > length (longest1ga) then
            longest1ga := word1ga
        end if
    end if
end loop
put longest1ga

put "Question #1 Part g Variation 2 Lesson 27"
var word1gb : string
var new_word1gb : string := ""
var number_of_vowels1gb : int := 0
loop
    put "What is the word? " ..
    get word1gb
    exit when word1gb = "000done"
    for i : 1 .. length (word1gb)
        if index ("aeiouAEIOU", word1gb (i)) not= 0 then
            number_of_vowels1gb += 1
        end if
    end for
    if length (new_word1gb) = 0 and number_of_vowels1gb >= 2 then
        new_word1gb := word1gb
    end if
    number_of_vowels1gb := 0
end loop
if length (new_word1gb) > 0 then
    put new_word1gb
else
    put "You didn't enter a word with two vowels."
end if

put "Question #2 Lesson 27"
var word2 : string
var remove2 : string
var new_word2 : string := ""
put "What is the word? " ..
get word2
put "What letter(s) should I remove? " ..
get remove2
for i : 1 .. length (word2)
    if index (remove2, word2 (i)) = 0 then
        new_word2 += word2 (i)
    end if
end for
put new_word2

put "Question #2 Part a Lesson 27"
var word2a : string
var remove2a : string
var new_word2a : string := ""
put "What letters should I remove? " ..
get remove2a
loop
    put "What is the word? " ..
    get word2a
    exit when word2a = "000done"
    for i : 1 .. length (word2a)
        if index (remove2a, word2a (i)) = 0 then
            new_word2a += word2a (i)
        end if
    end for
    put new_word2a
    new_word2a := ""
end loop

put "Question #2 Part b Lesson 27"
var word2b : string
var remove2b : string
var new_word2b : string := ""
put "What is the word? " ..
get word2b
loop
    put "What letter(s) should I remove? " ..
    get remove2b : *
    exit when remove2b = "000done"
    for i : 1 .. length (word2b)
        if index (remove2b, word2b (i)) = 0 then
            new_word2b += word2b (i)
        end if
    end for
    put new_word2b
    new_word2b := ""
end loop

put "Question #2 Part c Lesson 27"
var word2c : string
var remove2c : string
var new_word2c : string := ""
loop
    put "What is the word? " ..
    get word2c
    exit when word2c = "000done"
    loop
        put "What letter(s) should I remove? " ..
        get remove2c
        exit when remove2c = "000done"
        for i : 1 .. length (word2c)
            if index (remove2c, word2c (i)) = 0 then
                new_word2c += word2c (i)
            end if
        end for
        put new_word2c
        new_word2c := ""
    end loop
end loop

put "Question #3 Lesson 27"
var word3 : string
var new_word3 : string := ""
put "What is the word? " ..
get word3
for i : 1 .. length (word3)
    if index ("aeiou", word3 (i)) = 0 then
        new_word3 += word3 (i)
    else
        put word3 (i) ..
    end if
end for
put new_word3

put "Question #3 Part a Lesson 27"
var word3a : string
var new_word3a : string := ""
put "What is the word? " ..
get word3a
for i : 1 .. length (word3a)
    if word3a (i) = "r" then
        new_word3a += "R"
    else
        new_word3a += word3a (i)
    end if
end for
put new_word3a

put "Question #3 Part b Lesson 27"
var word3b : string
var new_word3b : string := ""
put "What is the word? " ..
get word3b
    for i : 1 .. length (word3b)
        if word3b(i) < "d" and word3b(i) >= "a" then
            new_word3b += "*"
        else
            new_word3b += word3b
        end if
    end for
put new_word3b

put "Question #3 Part c Lesson 27"
var word3c : string
var new_word3c : string := ""
var number3c : int
var change3c : string
loop
    put "What is the word? " ..
    get word3c
    exit when word3c = "000done"
    put "Would you like to change to the following of previous character? "..
    get change3c
    if change3c = "following" then
        for i : 1 .. length (word3c)
            number3c := ord(word3c(i))
            number3c +=1
            new_word3c += chr(number3c)
        end for
        put new_word3c
    elsif change3c = "previous" then
        for i : 1 .. length (word3c)
            number3c := ord(word3c(i))
            number3c -=1
            new_word3c += chr(number3c)
        end for
        put new_word3c
    else
        put "Please enter a proper answer; following or previous"
    end if
    new_word3c := ""
end loop

put "Question #3 Part d Lesson 27"
var word3d : string
var change : string
var number3d : int
var new_word3d : string := ""
loop
    put "Lower to Upper (lu) or Upper to Lower (ul) " ..
    get change
    exit when change = "000done"
    if change = "lu" then
        put "What is the word? " ..
        get word3d
        for i : 1 .. length (word3d)
            if word3d (i) > "a" and word3d (i) < "z" then
                number3d := ord (word3d (i)) - ord ("a") + ord ("A")
                new_word3d += chr (number3d)
            elsif word3d (i) > "A" and word3d (i) < "Z" then
                new_word3d += word3d (i)
            end if
        end for
    elsif change = "ul" then
        put "What is the word? " ..
        get word3d
        for i : 1 .. length (word3d)
            if word3d (i) > "A" and word3d (i) < "Z" then
                number3d := ord (word3d (i)) - ord ("A") + ord ("a")
                new_word3d += chr (number3d)
            elsif word3d (i) > "a" and word3d (i) < "z" then
                new_word3d += word3d (i)
            end if
        end for
    else
        put "Please re-enter the code for the case change."
    end if
    put new_word3d
end loop

