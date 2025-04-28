(*
Define a type mapTree that is a specialization of btree so
that it has a label type that is a set of domain-range pairs
• Define a tree t1 that has a single node with the pair ("a",1)
at the root
*)
datatype 'a btree = Empty | Node of 'a * 'a btree * 'a btree;
type mapTree = (string * int) btree;


val t1= Node(("a",1), Empty,Empty): mapTree;