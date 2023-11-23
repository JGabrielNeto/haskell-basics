data [] a = [] | a : [a]

originalList =  1 : 2 : 3 : 4 :[]

syntaticSugarList = [1, 2, 3, 4]

rangeOfValues = [1..4]      -- [1, 2, 3, 4]

rangeWithSteps = [0,2..10]  -- [0, 2, 4, 6, 8, 10]

infiniteList = [0..]

infiniteListSteps = [0,2..] -- all pairs until infinite

head originalList           -- takes the first element of the list == 1

tail originalList           -- returns the list without the first element == [2, 3, 4]

take 2 originalList         -- returns the first two elements == [1, 2]

drop 2 originalList         -- returns the list without the first two elements == [3, 4]

length originalList         -- get the length == 4

sum originalList            -- sum all elements == 10

product originalList        -- multiplies all elements == 24

[1, 2] ++ [3, 4]            -- ++ concatenates a list == [1, 2, 3, 4]

1 : [2, 3, 4]               -- : (cons) adds a value to the first index of list == [1, 2, 3, 4]

[0,2..100] !! 39            -- !! gets the item at index 39 == 78

onIndex = head (drop i xs)  -- does the same as the !! operator == [0,2..100] `onIndex` 39 == 78

[x^2 | x <- [1..5]]         -- output: [1,4,9,16,25]

[toLower c | c <- "HELLO"]  -- hello

[(x, even x) | x <- [1,2]]  -- [(1,False),(2,True)]

[(x,y) | x <- [1..4], y <- [4..5]] 
                            -- [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5),(4,4),(4,5)]

[x | x <- [1..10], even x]  -- [2,4,6,8,10]

zip [1,2,3] [4,5,6]         -- [(1,4),(2,5),(3,6)]


