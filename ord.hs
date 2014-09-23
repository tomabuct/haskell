max1 :: (Ord a) => a -> a -> a
max1 x y
  | x > y = x
  | otherwise = y

snd' :: [a] -> a
snd' (x : y : xs) = y 
snd' xs = error "no second"
