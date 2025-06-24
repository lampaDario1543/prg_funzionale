datatype ('label) tree = Node of 'label * 'label tree list;

fun depth_aux (Node(x, nil), current, ctr, max) = 1
    | depth_aux (Node(x, (t::ts)), current, ctr, max)=
        let
            val current 

fun depth T= depth_aux (T, 0, 0,0);


depth (Node(2, [Node (3, [Node(4,nil)]),Node(2,nil)]));