(*
Given a binary tree datatype ’
a btree
datatype ‘
a btree =
Empty |
Node of ‘a * ‘
a btree * ‘
a btree;
• Write a function inOrder that returns the list of the nodes
of a binary tree in inorder, where the label at the root is
between the inorder traversal of the left and right subtrees,
i.e., first the labels in the left tree, then the root and finally
the labels in the right tree.
• For instance
▪ inOrder (Node ("ML", Node ("as", Node ("a", Empty,
Empty), Node ("in", Empty, Empty)), Node ("types",
Empty, Empty))) = ["a", "as", "in", "ML", "types"]
*)
datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;

fun inOrder(Empty)= nil
    |inOrder(Node(a,lt,rt)) =inOrder(lt) @ [a] @ inOrder(rt);

inOrder (Node ("ML", Node ("as", Node ("a", Empty,Empty), Node ("in", Empty, Empty)), Node ("types",Empty, Empty)));