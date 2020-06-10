-- Binary Search Tree


module BST exposing (BST, create, insert, member)

{-| A binary tree is one of the following

  - a leaf
  - a mother with two children, where the children are binary trees

-}


type
    BST comparable
    -- Nil
    = Leaf (Maybe comparable)
    | Mother comparable (BST comparable) (BST comparable)


create : comparable -> BST comparable
create val =
    Leaf (Just val)


myTree : BST Int
myTree =
    Mother 3
        (Mother 3
            (Leaf (Just 5))
            (Mother 6
                (Leaf (Just 1))
                (Leaf (Just 2))
            )
        )
        (Mother 6
            (Mother 3
                (Mother 3
                    (Leaf (Just 5))
                    (Mother 6
                        (Leaf (Just 1))
                        (Leaf (Just 2))
                    )
                )
                (Mother 6
                    (Leaf (Just 1))
                    (Leaf (Just 2))
                )
            )
            (Leaf (Just 2))
        )


tree : BST Int
tree =
    Leaf (Just 1)


insert : comparable -> BST comparable -> BST comparable
insert val bst =
    case bst of
        Leaf Nothing ->
            Leaf (Just val)

        Leaf (Just a) ->
            if val < a then
                Mother a (Leaf (Just val)) (Leaf Nothing)

            else
                Mother a (Leaf Nothing) (Leaf (Just val))

        Mother a treeLeft treeRight ->
            if val < a then
                Mother a (insert val treeLeft) treeRight

            else
                Mother a treeLeft (insert val treeRight)


member : comparable -> BST comparable -> Bool
member val bst =
    case bst of
        Leaf Nothing ->
            False

        Leaf (Just a) ->
            val == a

        Mother a treeLeft treeRight ->
            a == val || member val treeLeft || member val treeRight



-- create balanced search tree from a given list / hint > recursive function
