var item_1, item_2, item_3 : real 
var total_tax : real :=0
var total_without_tax : real :=0
var item_1t, item_2t, item_3t : real :=0 
put "What is the cost of the first item? $"..
get item_1
put "What is the cost of the second item? $".. 
get item_2
put "What is the cost of the third item? $"..
get item_3
put "The average of the items without tax is " , (item_1 + item_2 + item_3)/3 , "."
item_1t :=item_1*0.13
item_2t :=item_2*0.13
item_3t :=item_2*0.13
total_tax := item_1t + item_2t + item_3t 
put "The average of your items with tax is " ,(item_1t + item_2t + item_3t)/3 , "."
put "The total of the items with tax is " , total_tax , "."
