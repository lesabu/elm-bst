-- Binary Search Tree


module BST exposing (BST, create, insert, member)

import Html exposing (a)


{-| A binary tree is one of the following

  - a leaf
  - a mother with two children, where the children are binary trees

-}
type BST a
    = Leaf a
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


insert : a -> BST a -> BST a
insert val bst =
    Debug.todo ""


member : a -> BST a -> Bool
member a bst =
    Debug.todo ""
