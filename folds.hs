foldr1' f (x : xs) = foldr f x xs

maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 max

sum' = foldl (+) 0

reverse' = foldl (flip (:)) []
