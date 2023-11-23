qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort bigger
  where
    bigger = [a | a <- xs, a <= x]
    smaller = [b | b <- xs, b > x]