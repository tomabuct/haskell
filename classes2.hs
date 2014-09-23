data Tree a = EmptyTree
            | Node { val :: a, left :: (Tree a), right :: (Tree a) } deriving Show

-- Tree a is an instance of Eq
instance (Eq a) => Eq (Tree a) where
  EmptyTree == EmptyTree = True
  (Node v l r) == (Node v' l' r') = and [ v == v', l == l', r == r' ]
  x == y = False

-- Eq' is an Eq-like class that I wrote to understand typeclasses
class Eq' a where
  (===) :: a -> a -> Bool
  (/==) :: a -> a -> Bool
  x === y = not (x /== y)
  x /== y = not (x === y)

-- Tree a is an instance of Eq'
instance (Eq' a) => Eq' (Tree a) where
  EmptyTree === EmptyTree = True
  Node v l r === Node v' l' r' = and [v === v', l' === l, r' === r]
  x === y = False

--isMyEqual = EmptyTree === EmptyTree
isSystemEqual = EmptyTree == EmptyTree
