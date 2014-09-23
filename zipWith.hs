f :: a -> b -> (a, b)
f = \x y -> (x, y)

zip1 :: [a] -> [b] -> [(a, b)]
zip1 = zipWith f

zip2 :: [a] -> [b] -> [(a, b)]
zip2 x y = zipWith f x y

zip3 :: [a] -> [b] -> [(a, b)]
zip3 = zipWith (\x y -> (x, y))

zip4 :: [a] -> [b] -> [(a, b)]
zip4 [] _ = []
zip4 _ [] = []
zip4 x:xs y:ys = (x,y) : (zip4 xs ys)

