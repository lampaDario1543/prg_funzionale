datatype 'label tree =Node of 'label * 'label tree list;

structure Tree = struct
exception Missing;
datatype 'label tree =Node of 'label * 'label tree list;
(* create a one-node tree *)
fun create(a) = Node(a,nil);
(* build a tree from a label and a list of trees *)
fun build(a,L) = Node(a,L);
(* find the ith subtree of a tree *)
fun subtree(i,Node(a,nil)) = raise Missing
| subtree(1,Node(a,t::ts)) = t
| subtree(i,Node(a,t::ts)) = subtree(i-1,Node(a,ts));
end;

val t = Tree.subtree (2, Node(2, [Node (3,[Node(4,nil)]), Node(2,nil)]): 'a tree);