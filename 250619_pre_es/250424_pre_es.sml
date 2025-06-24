(*
datatype 'a tree = Node of 'a * 'a tree list
• Write a function isOn that given a general tree T and an
element x tells whether x appears as a label of T
• For instance
▪ isOn 3 (Node(2, [Node (3,nil), Node(5,nil)])) = true
• You can write the function using recursion or using predefined
higher-order functions
P
*)


datatype ('label) tree = Node of 'label * 'label tree list;


fun isOn el (Node(x,nil)) = if x=el then true else false
    |isOn el (Node(x,L)) =
    let val newIsOn = isOn el;
    val listaMappata= map newIsOn L;
    in
        foldr (fn (a,b) => a orelse b) false listaMappata
    end;

isOn 5 (Node(2, [Node (5,nil), Node(3,nil)])); 