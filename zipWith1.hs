zipWith1 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith1 _ [] _ = []
zipWith1 _ _ [] = []
zipWith1 f (x:xs) (y:ys) = f x y : zipWith1 f xs ys

zip1 :: [a] -> [b] -> [(a, b)]
zip1 = zipWith1 (\x y -> (x, y))
