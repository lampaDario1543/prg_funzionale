datatype ('label) tree = Node of 'label * 'label tree list;

fun max(a, b) = if a<b then b else a;
fun depthR1(nil) = 1
    | depthR1(t::ts) = max(depthR(t), depthR1(ts))

and
    depthR(Node(_, nil)) = 1
    | depthR(Node(a, L)) = 1 + depthR1(L);

fun depthH(Node(_, L)) = 1 + foldr max 0 (map depthH L);


depthR (Node(2, [Node (3, [Node(4,nil)]),Node(2,nil)]));