var word : string
var total : int :=0

for i : 1..10
    put "What is the word? "..
    get word
    total += length(word)
end for

put "The average length is ", total / 10, "."
