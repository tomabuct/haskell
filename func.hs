filter1 :: (a -> Bool) -> [a] -> [a]
filter1 f [] = []
filter1 f (x:xs)
  | f x = x : filter1 f xs
  | otherwise = filter1 f xs
