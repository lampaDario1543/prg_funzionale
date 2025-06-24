datatype ctree = Empty | Leaf of char | Node of char * ctree * ctree;

fun get_words_aux (Empty, a, b)= (a,b)
    |get_words_aux((Leaf(c)), a,b) = (a^str(c),b)
    |get_words_aux((Node(c,lx,rx)),a,b)=
        let
            val (d,e)= get_words_aux(lx, a,(b^str (c)))
            val (a,b)=get_words_aux(rx, d,e)
        in
            (a,b)
        end;

fun get_words T = get_words_aux (T, "", "");

get_words(Node (#"a", Leaf #"c", Node (#"b",Leaf #"e", Leaf #"i")));