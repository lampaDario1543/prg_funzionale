datatype ('label) tree = Node of 'label * 'label tree list;


fun count (Node(el, nil)) toFind = if toFind = el then 1 else 0
    |count (Node(el, (x::xs))) toFind =
        let
            val pippo= count x toFind + count (Node(toFind-1, xs)) toFind
        in
            if el=toFind then 1+pippo else pippo
        end;


fun countR(Node(a, nil), x) = if a=x then 1 else 0
| countR(Node(a, t::ts), x) = countR(t, x) + countR(Node(a,ts), x);

count (Node(2, [Node (3,nil), Node(2,nil)])) 2;
countR ((Node(2, [Node (3,nil), Node(2,nil)])), 2);