foldr_tom :: (a -> b -> b) -> b -> [a] -> b
foldr_tom f i [] = i
foldr_tom f i (x:xs) = f x (foldr_tom f i xs)

foldl_tom :: (b -> a -> b) -> b -> [a] -> b
foldl_tom f i [] = i
foldl_tom f i l = f (foldl_tom f i xs) x
  where x = last l
        xs = init l

foldl_tom' :: (b -> a -> b) -> b -> [a] -> b
foldl_tom' f i [] = i
foldl_tom' f i x:xs = foldl_tom' f (f i x) xs
