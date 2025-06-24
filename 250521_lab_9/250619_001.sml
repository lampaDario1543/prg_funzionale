datatype ('label) tree = Node of 'label * 'label tree list;

fun isOn (Node(el, nil)) toFind = el=toFind
    | isOn (Node(el,(x::xs))) toFind=
        toFind = el orelse isOn x toFind orelse isOn (Node(el, xs)) toFind;

isOn (Node(2, [Node (3,nil), Node(5,nil)])) 3;