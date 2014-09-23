data Tree a = EmptyTree
            | Node { val :: a, left :: (Tree a), right :: (Tree a) } deriving Show

instance (Eq a) => Eq (Tree a) where
  EmptyTree == EmptyTree = True
  (Node v l r) == (Node v' l' r') = and [ v == v', l == l', r == r' ]
  x == y = False

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = Node { val = x, left = EmptyTree, right = EmptyTree }
treeInsert x node
  | x == v = Node { val = v, left = l, right = r }
  | x < v = Node { val = v, left = (treeInsert x l), right = r }
  | x > v = Node { val = v, left = l, right = (treeInsert x r) }
    where v = val node
          l = left node
          r = right node
