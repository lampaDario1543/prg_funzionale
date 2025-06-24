datatype ('label) tree = Node of 'label * 'label tree list;

fun preOrder (Node(a,nil))= [a]
    |preOrder (Node(a, l))= (a:: foldr (op @) nil (map preOrder l)); (*devi fare così perché map restituisce [[1],[2],[3]] una lista di liste, facendo il fold con una lista vuota concatena ogni lista *)

val test= Node(1,[Node(2,nil)]);
preOrder test;

preOrder (Node(2, [Node (3, [Node(4,nil)]), Node(2,nil)]));

