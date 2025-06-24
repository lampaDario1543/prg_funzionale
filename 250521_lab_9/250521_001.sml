(*
• Given the type tree we introduced for representing a
general tree T
datatype ('label) tree =
Node of 'label * 'label tree list;
datatype 'a tree = Node of 'a * 'a tree list
• Write a function isOn that given a general tree T and an
element x tells whether x appears as a label of T
• For instance
▪ isOn (Node(2, [Node (3,nil), Node(5,nil)])) 3 = true
• You can write the function using recursion or using predefined
higher-order functions
P
*)

datatype ('label) tree = Node of 'label * 'label tree list;

fun isOn (Node(elem,nil)) el =if(elem=el) then true else false
    |isOn (Node(elem, node::next_nodes)) el =
    if(elem=el) then true 
    else isOn node el orelse isOn (Node(elem,next_nodes)) el;

isOn (Node(2, [Node (5,nil), Node(3,nil)])) 3;