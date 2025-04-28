(*
Given a binary tree datatype ’
a btree
datatype ‘
a btree =
Empty |
Node of ‘a * ‘
a btree * ‘
a btree;
• Write a function postOrder that returns a list of the nodes of a binary
tree in postorder, where the label at the root follows the postorder
traversal of the left and right subtrees (first the labels of the tree on the
left, then the ones of the tree on the right and finally the root).
• For instance
▪ postOrder (Node ("ML", Node ("as", Node ("a", Empty, Empty), Node ("in", Empty, Empty)), Node ("types",Empty, Empty))) = ["a", "in", "as", "types", "ML"]
*)
datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;

fun postOrder(Empty)= nil
    |postOrder(Node(a,lt,rt)) =postOrder(lt) @ postOrder(rt) @ [a];

postOrder (Node ("ML", Node ("as", Node ("a", Empty,Empty), Node ("in", Empty, Empty)), Node ("types",Empty, Empty)));