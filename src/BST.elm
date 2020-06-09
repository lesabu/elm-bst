-- Binary Search Tree


module BST exposing (BST, create, insert, member)

import Html exposing (a)


{-| A binary tree is one of the following

  - a leaf
  - a mother with two children, where the children are binary trees

-}

type BST a
    = EmptySlot
    | Leaf a
    | Mother a (BST a) (BST a)


create : a -> BST a
create val =
    Leaf val


myTree : BST Int
myTree =
    Mother 3
        (Mother 3
            (Leaf 5)
            (Mother 6
                (Leaf 1)
                (Leaf 2)
            )
        )
        (Mother 6
            (Mother 3
                (Mother 3
                    (Leaf 5)
                    (Mother 6
                        (Leaf 1)
                        (Leaf 2)
                    )
                )
                (Mother 6
                    (Leaf 1)
                    (Leaf 2)
                )
            )
            (Leaf 2)
        )

tree : BST Int
tree = Leaf 1


insert : a -> BST a -> BST a
insert val bst =
    case bst of
        EmptySlot -> Leaf val
        Leaf a -> Mother a (create val) EmptySlot
        -- case matching for Mother to check if it should insert left or right
        Mother a treeLeft treeRight -> Mother a (insert val treeLeft) (insert val treeRight)


member : a -> BST a -> Bool
member val bst =
    case bst of
        EmptySlot -> False
        Leaf a -> val == a
        Mother a treeLeft treeRight ->
            if a == val then
                True
            else if member val treeLeft then
                True
            else if  member val treeRight then
                True
            else False
