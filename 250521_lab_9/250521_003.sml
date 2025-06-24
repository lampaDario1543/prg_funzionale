(*
Given the type tree we introduced for representing a general
tree T
datatype ('label) tree =
Node of 'label * 'label tree list;
datatype 'a tree = Node of 'a * 'a tree list
• Write a function depth that takes a general tree T and returns
the depth of T
• For instance
▪ depth (Node(2, [Node (3, [Node(4,nil)]),
Node(2,nil)])) = 3
• HINT: You could need mutually recursive functions
• You can write the function using recursion or using predefined
higher-order functions
*)

datatype ('label) tree =Node of 'label * 'label tree list;

fun depth_wrap (Node(elem,nil)) current max_depth=if((current+1)>max_depth) then current+1 else max_depth
    |depth_wrap (Node(elem, node::next_nodes)) current max_depth=
    depth_wrap (Node(elem, next_nodes)) (current+1) (depth_wrap node (current+1) max_depth);
fun depth t = depth_wrap t 0 0;

depth (Node(2, [Node (3, nil),Node(2,[Node(4,[Node(4,[Node(4,[Node(4,nil)])])])])])); (*perché ritorna 7 e non 6 *)
depth (Node(2, [Node (3, nil),Node(2,nil)]));