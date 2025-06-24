(*
Given the type tree we introduced for representing a
general tree T
datatype ('label) tree =
Node of 'label * 'label tree list;
datatype 'a tree = Node of 'a * 'a tree list
• Write a function count that given a general tree T and
x, returns the number of times that x appears as a
label in T
• For instance
▪ count (Node(2, [Node (3,nil), Node(2,nil)])) 2 = 2
• You can write the function using recursion or using
predefined higher-order functions
*)
datatype ('label) tree =Node of 'label * 'label tree list;


fun count (Node(elem,nil)) el =if(elem=el) then 1 else 0
    |count (Node(elem, node::next_nodes)) el =
    if(elem=el) then 1 + count node el + count (Node((el-1),next_nodes)) el else count node el + count (Node((el-1),next_nodes)) el;

count (Node(2, [Node (3,[Node(2,nil)]), Node(2,nil)])) 2;