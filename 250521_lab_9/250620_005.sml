structure Tree= struct 
    datatype ('label) tree= Node of 'label * 'label tree list;
    exception Missing
    fun create x = Node(x, nil)
    fun build (x,L) = Node(x, L)
    fun get_subtree(i, nil) = raise Missing
        | get_subtree(1,x::xs) = x
        | get_subtree(i, x::xs) = get_subtree(i-1, xs)
    fun subtree(i,Node(_,l)) = get_subtree(i,l);

end;

val albero_maledetto=Tree.build (2, [
  Tree.build (3, [Tree.create 4]),
  Tree.create 2
]);
val t = Tree.subtree (2, albero_maledetto);


(*prossimo ad un esaurimento nervoso.*)