collatz 1 = [ 1 ]
collatz n
  | even n = n : collatz (n `div` 2)
  | odd n = n : collatz (n * 3 + 1)

chains = [ n | n <- [ 1..100 ], let chain = collatz n, length chain > 15 ]

chains2 :: (Num a) => a
chains2 = (length (filter isLong (map collatz [ 1..100 ])))
  where isLong list = length list > 15
