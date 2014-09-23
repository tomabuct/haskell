data Tree a = EmptyTree
            | Node { val :: a, left :: (Tree a), right :: (Tree a) } deriving Show

-- Tree a is an instance of Eq
instance (Eq a) => Eq (Tree a) where
  EmptyTree == EmptyTree = True
  (Node v l r) == (Node v' l' r') = and [ v == v', l == l', r == r' ]
  x == y = False

-- x = EmptyTree == EmptyTree <- fails to typecheck with "No instance for (Eq a0) arising from use of '=='..."
