listSize :: [a] -> Int            -- Declares the type of listSize
listSize [] = 0                   -- Defines its fixed point
listSize (_:xs) = 1 + listSize xs -- (_:xs) removes the first element of the list then calculates it recursivelly

isOdd :: Integral a => a -> Bool
isOdd n = n `mod` 2 == 1

squared :: Num a => a -> a
squared n = n * n

quadraticRoots :: Floating a => a -> a -> a -> (a, a)
quadraticRoots a b c  = (((-b) + sqrt (b ^ 2 - 4 * a * c)) / (2 * a),
                         ((-b) - sqrt (b ^ 2 - 4 * a * c)) / (2 * a))

coolerQuadraticRoots :: (Floating a, Ord a) => a -> a -> a -> (a, a)
coolerQuadraticRoots a b c
  | delta >= 0      = (x1, x2)                                   -- happy path
  | otherwise       = error "Delta can't be a negative number."  -- otherwise, throws an error
  where
    delta = b ^ 2 - 4 * a * c
    deltaRoot = sqrt delta
    quadratic dr = ((-b) + dr) / (2 * a)
    x1 = quadratic deltaRoot
    x2 = quadratic (-deltaRoot)
