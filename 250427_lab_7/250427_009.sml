(*
Write a function sumTree for a mapTree T of type (‘
a,
’b)
mapTree. The function visits the tree and returns the sum
of the second component of the label of all nodes.
• For instance
▪ sumTree (Node(("a",1), Node(("c",2), Empty,
Node(("d",3), Empty, Empty)), Empty) = 6
*)
datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;
type mapTree = (string * int) btree;

fun sumTree(Empty: mapTree) = 0
    |sumTree(Node((a,b),lt,rt):mapTree) = b+ sumTree(lt) + sumTree(rt);
sumTree (Node(("a",1), Node(("c",2), Empty,Node(("d",3), Empty, Empty)), Empty));