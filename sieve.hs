sieve [] = []
sieve (x:xs) = x : sieve (filter (isnotmult x) xs)
  where isnotmult i x = x `mod` i /= 0
